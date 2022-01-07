
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux; } ;
typedef int KBDC ;


 int DELAY (int) ;
 int FALSE ;
 int KBD_MAXRETRY ;
 int KBD_MAXWAIT ;
 int KBD_RESETDELAY ;
 int LOG_DEBUG ;
 int PSMC_RESET_DEV ;
 int PSM_ACK ;
 int PSM_RESEND ;
 int PSM_RESET_DONE ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int empty_both_buffers (int ,int) ;
 int emptyq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int log (int ,char*,int) ;
 int read_aux_data (int ) ;
 int read_aux_data_no_wait (int ) ;
 scalar_t__ verbose ;
 int write_aux_command (int ,int ) ;

int
reset_aux_dev(KBDC p)
{
    int retry = KBD_MAXRETRY;
    int again = KBD_MAXWAIT;
    int c = PSM_RESEND;

    while (retry-- > 0) {
        empty_both_buffers(p, 10);
        if (!write_aux_command(p, PSMC_RESET_DEV))
     continue;
 emptyq(&kbdcp(p)->aux);

 for (again = KBD_MAXWAIT; again > 0; --again) {
            DELAY(KBD_RESETDELAY*1000);
            c = read_aux_data_no_wait(p);
     if (c != -1)
  break;
 }
        if (verbose || bootverbose)
            log(LOG_DEBUG, "kbdc: RESET_AUX return code:%04x\n", c);
        if (c == PSM_ACK)
         break;
    }
    if (retry < 0)
        return FALSE;

    for (again = KBD_MAXWAIT; again > 0; --again) {

        DELAY(KBD_RESETDELAY*1000);
        c = read_aux_data_no_wait(p);
        if (c != -1)
         break;
    }
    if (verbose || bootverbose)
        log(LOG_DEBUG, "kbdc: RESET_AUX status:%04x\n", c);
    if (c != PSM_RESET_DONE)
        return FALSE;

    c = read_aux_data(p);
    if (verbose || bootverbose)
        log(LOG_DEBUG, "kbdc: RESET_AUX ID:%04x\n", c);

    return TRUE;
}
