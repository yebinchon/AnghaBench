
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int ENXIO ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_opened (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static __inline int
ttydev_enter(struct tty *tp)
{

 tty_lock(tp);

 if (tty_gone(tp) || !tty_opened(tp)) {

  tty_unlock(tp);
  return (ENXIO);
 }

 return (0);
}
