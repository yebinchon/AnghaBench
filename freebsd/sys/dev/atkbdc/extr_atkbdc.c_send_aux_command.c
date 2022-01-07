
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aux; } ;
typedef int KBDC ;


 int KBD_MAXRETRY ;
 int PSM_ACK ;
 int emptyq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int wait_for_aux_ack (TYPE_1__*) ;
 int write_aux_command (int ,int) ;

int
send_aux_command(KBDC p, int c)
{
    int retry = KBD_MAXRETRY;
    int res = -1;

    while (retry-- > 0) {
 if (!write_aux_command(p, c))
     continue;
 emptyq(&kbdcp(p)->aux);
        res = wait_for_aux_ack(kbdcp(p));
        if (res == PSM_ACK)
         break;
    }
    return res;
}
