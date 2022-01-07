
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {struct rc_chans* t_sc; } ;
struct rc_chans {int rc_pendcmd; } ;


 int CD180_C_EBRK ;
 int CD180_C_SBRK ;

__attribute__((used)) static void
rc_break(struct tty *tp, int brk)
{
 struct rc_chans *rc;

 rc = tp->t_sc;

 if (brk)
  rc->rc_pendcmd = CD180_C_SBRK;
 else
  rc->rc_pendcmd = CD180_C_EBRK;
}
