
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int KBD_ACK ;
 int KBD_MAXRETRY ;
 int kbdcp (int ) ;
 int wait_for_kbd_ack (int ) ;
 int write_kbd_command (int ,int) ;

int
send_kbd_command(KBDC p, int c)
{
    int retry = KBD_MAXRETRY;
    int res = -1;

    while (retry-- > 0) {
 if (!write_kbd_command(p, c))
     continue;
        res = wait_for_kbd_ack(kbdcp(p));
        if (res == KBD_ACK)
         break;
    }
    return res;
}
