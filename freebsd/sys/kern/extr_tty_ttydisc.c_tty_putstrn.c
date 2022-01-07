
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_inq; int t_column; int t_writepos; } ;


 int MA_OWNED ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 int ttydevsw_outwakeup (struct tty*) ;
 int ttydisc_echo_force (struct tty*,char const,int ) ;
 int ttyinq_reprintpos_set (int *) ;

int
tty_putstrn(struct tty *tp, const char *p, size_t n)
{
 size_t i;

 tty_lock_assert(tp, MA_OWNED);

 if (tty_gone(tp))
  return (-1);

 for (i = 0; i < n; i++)
  ttydisc_echo_force(tp, p[i], 0);

 tp->t_writepos = tp->t_column;
 ttyinq_reprintpos_set(&tp->t_inq);

 ttydevsw_outwakeup(tp);
 return (0);
}
