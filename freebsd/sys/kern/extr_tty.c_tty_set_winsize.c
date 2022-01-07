
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int dummy; } ;
struct tty {struct winsize t_winsize; } ;


 int SIGWINCH ;
 scalar_t__ memcmp (struct winsize*,struct winsize const*,int) ;
 int tty_signal_pgrp (struct tty*,int ) ;

void
tty_set_winsize(struct tty *tp, const struct winsize *wsz)
{

 if (memcmp(&tp->t_winsize, wsz, sizeof(*wsz)) == 0)
  return;
 tp->t_winsize = *wsz;
 tty_signal_pgrp(tp, SIGWINCH);
}
