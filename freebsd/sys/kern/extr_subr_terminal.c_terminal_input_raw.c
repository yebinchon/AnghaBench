
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct terminal {struct tty* tm_tty; } ;


 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,char,int ) ;
 int ttydisc_rint_done (struct tty*) ;

void
terminal_input_raw(struct terminal *tm, char c)
{
 struct tty *tp;

 tp = tm->tm_tty;
 if (tp == ((void*)0))
  return;

 tty_lock(tp);
 ttydisc_rint(tp, c, 0);
 ttydisc_rint_done(tp);
 tty_unlock(tp);
}
