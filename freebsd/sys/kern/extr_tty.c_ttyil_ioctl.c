
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct winsize {int dummy; } ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct termios {int dummy; } ;
struct cdev {scalar_t__ si_drv2; struct tty* si_drv1; } ;
typedef scalar_t__ caddr_t ;


 int ENODEV ;
 int ENOIOCTL ;
 int ENOTTY ;
 int PRIV_TTY_SETA ;




 int TTYDISC ;
 int bzero (scalar_t__,int) ;
 int dev2unit (struct cdev*) ;
 int priv_check (struct thread*,int ) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydevsw_cioctl (struct tty*,int ,int,scalar_t__,struct thread*) ;

__attribute__((used)) static int
ttyil_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct tty *tp = dev->si_drv1;
 int error;

 tty_lock(tp);
 if (tty_gone(tp)) {
  error = ENODEV;
  goto done;
 }

 error = ttydevsw_cioctl(tp, dev2unit(dev), cmd, data, td);
 if (error != ENOIOCTL)
  goto done;
 error = 0;

 switch (cmd) {
 case 131:

  *(struct termios*)data = *(struct termios*)dev->si_drv2;
  break;
 case 128:

  error = priv_check(td, PRIV_TTY_SETA);
  if (error)
   break;
  *(struct termios*)dev->si_drv2 = *(struct termios*)data;
  break;
 case 130:
  *(int *)data = TTYDISC;
  break;
 case 129:
  bzero(data, sizeof(struct winsize));
  break;
 default:
  error = ENOTTY;
 }

done: tty_unlock(tp);
 return (error);
}
