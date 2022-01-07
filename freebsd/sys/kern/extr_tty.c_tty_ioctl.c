
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;


 int ENOIOCTL ;
 int ENXIO ;
 int MA_OWNED ;
 int tty_generic_ioctl (struct tty*,int ,void*,int,struct thread*) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 int ttydevsw_ioctl (struct tty*,int ,void*,struct thread*) ;

int
tty_ioctl(struct tty *tp, u_long cmd, void *data, int fflag, struct thread *td)
{
 int error;

 tty_lock_assert(tp, MA_OWNED);

 if (tty_gone(tp))
  return (ENXIO);

 error = ttydevsw_ioctl(tp, cmd, data, td);
 if (error == ENOIOCTL)
  error = tty_generic_ioctl(tp, cmd, data, fflag, td);

 return (error);
}
