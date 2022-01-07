
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_reset (int *,int,void (*) (void*),int *) ;
 int conscallout ;
 int consmsgbuf ;
 int * constty ;
 int constty_clear () ;
 int constty_wakeups_per_second ;
 int hz ;
 int msgbuf_getchar (int *) ;
 int tty_lock (int *) ;
 scalar_t__ tty_putchar (int *,int) ;
 int tty_unlock (int *) ;

__attribute__((used)) static void
constty_timeout(void *arg)
{
 int c;

 if (constty != ((void*)0)) {
  tty_lock(constty);
  while ((c = msgbuf_getchar(&consmsgbuf)) != -1) {
   if (tty_putchar(constty, c) < 0) {
    tty_unlock(constty);
    constty = ((void*)0);
    break;
   }
  }

  if (constty != ((void*)0))
   tty_unlock(constty);
 }
 if (constty != ((void*)0)) {
  callout_reset(&conscallout, hz / constty_wakeups_per_second,
      constty_timeout, ((void*)0));
 } else {

  constty_clear();
 }
}
