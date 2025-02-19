
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int KBD_ACK ;
 int KBD_MAXRETRY ;
 int KBD_RESEND ;
 int kbdcp (int ) ;
 int wait_for_kbd_ack (int ) ;
 int write_kbd_command (int ,int) ;

int
send_kbd_command_and_data(KBDC p, int c, int d)
{
    int retry;
    int res = -1;

    for (retry = KBD_MAXRETRY; retry > 0; --retry) {
 if (!write_kbd_command(p, c))
     continue;
        res = wait_for_kbd_ack(kbdcp(p));
        if (res == KBD_ACK)
         break;
        else if (res != KBD_RESEND)
         return res;
    }
    if (retry <= 0)
 return res;

    for (retry = KBD_MAXRETRY, res = -1; retry > 0; --retry) {
 if (!write_kbd_command(p, d))
     continue;
        res = wait_for_kbd_ack(kbdcp(p));
        if (res != KBD_RESEND)
         break;
    }
    return res;
}
