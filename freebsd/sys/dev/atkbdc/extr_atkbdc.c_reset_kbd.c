
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kbd; } ;
typedef int KBDC ;


 int DELAY (int) ;
 int FALSE ;
 int KBDC_RESET_KBD ;
 int KBD_ACK ;
 int KBD_MAXRETRY ;
 int KBD_MAXWAIT ;
 int KBD_RESEND ;
 int KBD_RESETDELAY ;
 int KBD_RESET_DONE ;
 int LOG_DEBUG ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int empty_both_buffers (int ,int) ;
 int emptyq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int log (int ,char*,int) ;
 int read_controller_data (int ) ;
 scalar_t__ verbose ;
 int write_kbd_command (int ,int ) ;

int
reset_kbd(KBDC p)
{
    int retry = KBD_MAXRETRY;
    int again = KBD_MAXWAIT;
    int c = KBD_RESEND;

    while (retry-- > 0) {
        empty_both_buffers(p, 10);
        if (!write_kbd_command(p, KBDC_RESET_KBD))
     continue;
 emptyq(&kbdcp(p)->kbd);
        c = read_controller_data(p);
 if (verbose || bootverbose)
            log(LOG_DEBUG, "kbdc: RESET_KBD return code:%04x\n", c);
        if (c == KBD_ACK)
         break;
    }
    if (retry < 0)
        return FALSE;

    while (again-- > 0) {

        DELAY(KBD_RESETDELAY*1000);
        c = read_controller_data(p);
        if (c != -1)
         break;
    }
    if (verbose || bootverbose)
        log(LOG_DEBUG, "kbdc: RESET_KBD status:%04x\n", c);
    if (c != KBD_RESET_DONE)
        return FALSE;
    return TRUE;
}
