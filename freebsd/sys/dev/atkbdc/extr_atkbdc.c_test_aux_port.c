
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kbd; } ;
typedef int KBDC ;


 int FALSE ;
 int KBDC_TEST_AUX_PORT ;
 int KBD_MAXRETRY ;
 int KBD_MAXWAIT ;
 int LOG_DEBUG ;
 scalar_t__ bootverbose ;
 int empty_both_buffers (int ,int) ;
 int emptyq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int log (int ,char*,int) ;
 int read_controller_data (int ) ;
 scalar_t__ verbose ;
 scalar_t__ write_controller_command (int ,int ) ;

int
test_aux_port(KBDC p)
{
    int retry = KBD_MAXRETRY;
    int again = KBD_MAXWAIT;
    int c = -1;

    while (retry-- > 0) {
        empty_both_buffers(p, 10);
        if (write_controller_command(p, KBDC_TEST_AUX_PORT))
         break;
    }
    if (retry < 0)
        return FALSE;

    emptyq(&kbdcp(p)->kbd);
    while (again-- > 0) {
        c = read_controller_data(p);
        if (c != -1)
         break;
    }
    if (verbose || bootverbose)
        log(LOG_DEBUG, "kbdc: TEST_AUX_PORT status:%04x\n", c);
    return c;
}
