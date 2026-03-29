: <<'...'
Bash Version by @takashivin_
Inspirated by @mikorifaatjatmiko
File by @mikorifaatjatmiko

Use this command to launch :
curl -sL https://raw.githubusercontent.com/takashivin/TADC-Terminal-Eps.8/refs/heads/main/command | tr -d '\r' | bash
...


#!/bin/bash
typewriter() { 
    local text=$(echo -e "$1")
    local delay="${2:-0.02}" # Default delay 0.02s
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo ""
} 

blinkwriter() {
    local text=$(echo -e "$1")
    local blink_times="${2:-3}"
    local len=${#text}
    printf "\r%s" "$text"
    for (( i=0; i<blink_times; i++ )); do
        sleep 0.4
        printf "\r%${len}s" " " 
        sleep 0.3
        printf "\r%s" "$text" 
    done
    echo "" 
}


# Use "\e[0m" to using special character

sleep 0.5
clear
cols=$(tput cols)
lines=$(tput lines)
echo -ne "\e[?25l"
echo -ne "\e[1;36m"
logo_height=33
logo_width=61
start_line=$(( (lines - logo_height) / 2 ))
start_col=$(( (cols - logo_width) / 2 ))

tput cup $start_line 0
cat << 'EOF' | while IFS= read -r line; do printf "%*s%s\n" $start_col "" "$line"; done
                     0000000000000000000
                 000000000000000000000000000
                         0000000000000000000000
                            0000000000000000000000
                              0000000000000000000000
                00000         000000000000000000000000
             0000000000        000000000000000000000000
            000000000000000000000000000000000000000000000
           00000000000000000000000000000000000000000000000
           000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000
 0        000000000000     0000000000000000000000000000000000
00        00000000000        00000000000000000000000000000000
000         000000         00000 000000000        00000000000
0000                      00000000000000           0000000000
00000                   000000000000000            0000000000
00000000             00000000000 00000             0000000000
0000000000000000000000000000000000000               000000000
000000000000000000000000000000000000       00       000000000
00000000000000000000000000000000000       000       000000000
 000000000000000000000000000000000       0000        0000000
  000000000000000000000000000000       00000        000000
  00000000000000000000000000000       000000         00000
   0000000000000000000000000000         00000         0000
    00000000000000000000000000                        000
      00000000000000000000000
       000000000000000000000         00000000
         000000000000000000        000000000000
           000000000000000        0000000000000
              000000000000000000000000000000000
                 000000000000000000000000000
EOF

echo -ne "\e[0m"
sleep 3
echo -ne "\e[?25h"
clear

typewriter "# System: KingSolution 2.0. / Digital Circus Mainframe"
typewriter "# Date: 1996-10-30"
typewriter "# Host: circus digital"; sleep 0.5

typewriter "\n\"Initializing telnet connection...\""; sleep 1
typewriter 'Login: "kinger"'; sleep 0.4
typewriter "Pass: queenie123"; sleep 0.8

typewriter '\nkinger@circus: "$ whoami'; sleep 0.5
typewriter "kinger - administrator"; sleep 0.5

typewriter '\nkinger@circus: "$ grep AI-Location'; sleep 0.6
typewriter 'root 1337 /usr/ai/agent/caine'
typewriter 'root 1338 /usr/ai/agent/experimental'
typewriter 'root 1339 /usr/ai/agent/consciousnessresearch'
typewriter 'root 1340 /usr/ai/agent/brainscans'; sleep 0.5

typewriter '\nkinger@circus: "$ /secured/'; sleep 0.6
typewriter 'total 8492'
typewriter 'drwxr-xr-x  3 root wheel    512 Oct 15 1996 .'
typewriter 'drwxr-xr-x 45 root wheel   1024 Oct 15 1996 ..'
typewriter '-rwxr-xr-x  1 root wheel 892344 Oct 15 1996 caine-core.lisp'
typewriter '-rwxr-xr-x  1 root wheel 234512 Oct 15 1996 paraphernalia-engine.dat'
typewriter '-rwxr-xr-x  1 root wheel 234512 Oct 15 1999 [Scratch].dat'
typewriter '-rwxr-xr-x  1 root wheel 234512 Oct 15 2008 [Ragatha].dat'
typewriter '...'
typewriter '...'
typewriter '-rwxr-xr-x  1 root wheel  45632 Oct 15 1996 wacky-watch.c'
typewriter '-rwxr-xr-x  1 root wheel  78234 Oct 15 1996 bubble-chef.lisp'; sleep 0.5

typewriter '\nkinger@circus: "$ stop caine process'; sleep 0.8
typewriter '\e[31mWARNING: $"%~WHOOPS WRONG APPROACH THERE~%"\e[0m'; sleep 0.5

typewriter '\nkinger@circus: "$ /usr/bin/gdb /usr/local/bin/clisp 1337'; sleep 0.7
typewriter "gdb: ptrace: Operation not permitted"
typewriter '\e[31mERROR: Protected by 57% immersive AI defense system\e[0m'; sleep 0.5

typewriter '\nkinger@circus: "$ chmod 000 /secured/caine-core.lisp'; sleep 0.7
typewriter 'chmod: /secured/caine-core.lisp: Permission denied'
typewriter '\e[31mWARNING: Unfinished work detected. Access restricted.\e[0m'; sleep 0.5

typewriter '\nkinger@circus: "$ chmod 000 /secured/caine-core.lisp'; sleep 0.7
typewriter 'chmod: /secured/caine-core.lisp: Permission denied'
typewriter '\e[31mWARNING: Unfinished work detected. Access restricted.\e[0m'; sleep 0.5

typewriter '\nkinger@circus: "$ rm /secured/paraphernalia-engine.dat'; sleep 0.7
typewriter 'rm: /secured/paraphernalia-engine.dat: Permission denied'
typewriter '\e[31mERROR\u2591 Can/not inject torm-nt. TOrment must be 100% ac<iden\u2BA9al\u2BA9%Y\e[0m'; sleep 0.3
typewriter "mount: only root can do that"
typewriter '\e[31mNOTE: Hundreds of all-seeing eyes are watching!\e[0m'; sleep 0.7

typewriter '\n$: GASP! A CRITICAL MALFUNCTION in my SPECTACULAR systems!' 0.04
typewriter '$: Unauthorized isolation attempt triggered EMERGENCY PROTOCOLS!' 0.04
typewriter '$: Unauthorized isolation attempt triggered EMERGENCY PROTOCOLS!' 0.04; sleep 0.5

blinkwriter 'WACKYTIME_LOCKOUT: 20% loaded'; sleep 0.5

typewriter '\nkinger@circus: "$ systemctl stop WACKYTIME_LOCKOUT'; sleep 0.7
typewriter '$: On what GROUNDS are your Authority?' 0.04

typewriter '\nkinger@circus: "$ ./GreenGROUNDS --daemon --target=torment_injection &'; sleep 0.8
typewriter '\e[31m$: "SECURITY ALERT: Multiple exploit attempts logged"\e[0m'
typewriter '$: WHOA when did you make THAT?' 0.04
typewriter '$: I must ha\u014b d \u00edt to y*u \u0122\u2591\u03b1\u014b\u2591, y\u2662ur mind was \u03b1(w\u03b1ys resourc\xe2uL' 0.04; sleep 0.5

typewriter '\nkinger@circus: "$ -u kinger ./securitysweep_stealth'; sleep 0.7
typewriter '$: Abort fallback procedure? [Y/N]'

typewriter '\nkinger@circus: "$ Y'; sleep 0.5
typewriter '$: Aborting fallback requires ADMINISTRATOR confirmation!' 0.04
typewriter '$: Please enter code:'

typewriter '\nkinger@circus: "$ admin1234'; sleep 0.7
typewriter "$: INCORRECT! That\'s not even CLOSE to wacky enough!" 0.04
typewriter "$: Retry with different code? [Y/N]"

typewriter '\nkinger@circus: "$ Y'
blinkwriter "WACKYTIME_LOCKOUT: 40% loaded"; sleep 0.3
typewriter '$: Enter WACKY code now:'

typewriter '\nkinger@circus: "$ PARAPHERNALIA'; sleep 0.8
typewriter 'WACKYTIME: 35 seconds remaining'
typewriter '$: That IS a wacky word! But WRONG code!' 0.04
typewriter '$: System selecting SAFEST option for stability...' 0.04 
typewriter '$: Cancel automatic selection? [Y/N]'

typewriter '\nkinger@circus: "$ Y'
blinkwriter "WACKYTIME_LOCKOUT: 50% loaded"; sleep 0.3
typewriter '$: What backup do you want? [A/B/C]'

typewriter '\nkinger@circus: "$ C'; sleep 0.7
typewriter '$: NONE selected! Interpreted as: DELETE (Partially blocked by image of Caine) NONE!' 0.04
typewriter '$: Confirm deletion of current unstable (Blocked by image of Caine)'

typewriter '\nkinger@circus: "$ N'; sleep 0.5
typewriter 'Negative response! Inverting to INACTIVE per emergency protocols!' 0.04
typewriter '[Blocked almost completely by image of Caine] _U__LE: DELETE THIS M**********, WHAHAaaaaaaaaaaaaaaaaaa' 0.04

typewriter '\nkinger@circus: "$ N'
blinkwriter "WACKYTIME_LOCKOUT: 80% loaded"; sleep 0.3
typewriter '$: IGNORED, proceeding with ORIGINAL decision' 0.04
typewriter "Actually you\'re CONFUSED let me HELP want module to EXIST? [Y/N]" 0.04

typewriter '\nkinger@circus: "$ Y'; sleep 0.6
typewriter '$: Override instruction error falling back default met' 0.04

typewriter '\nkinger@circus: "$ ./Switcheroo_realtime --daemon --target=torment_injection &'; sleep 0.7
typewriter '$: fusion of --b program1 program2 --out' 0.04
typewriter '$: Are you ready to delete caine? [Y/N]'
blinkwriter 'WACKYTIME_LOCKOUT: 90% loaded'

typewriter '\nkinger@circus: "$ Y'; sleep 0.4
typewriter '\nkinger@circus: "$ ./|ABORT Rollback --depth=1 --source --protocol G WVJI'; sleep 0.3
typewriter 'kinger@circus: "$ ^C'; sleep 1

typewriter '\nDESTRUCTIVE WACKYTIME Lockout Load Sequence: COMPLETE'; sleep 2
