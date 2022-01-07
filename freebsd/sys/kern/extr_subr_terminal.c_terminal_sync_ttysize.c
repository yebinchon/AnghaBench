
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct terminal {int tm_winsize; struct tty* tm_tty; } ;


 int tty_lock (struct tty*) ;
 int tty_set_winsize (struct tty*,int *) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static void
terminal_sync_ttysize(struct terminal *tm)
{
 struct tty *tp;

 tp = tm->tm_tty;
 if (tp == ((void*)0))
  return;

 tty_lock(tp);
 tty_set_winsize(tp, &tm->tm_winsize);
 tty_unlock(tp);
}
