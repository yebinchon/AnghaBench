
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u_long ;
struct termios {int c_iflag; int c_oflag; int c_cflag; int c_lflag; scalar_t__ c_ospeed; scalar_t__ c_ispeed; scalar_t__* c_cc; } ;
struct tty {struct termios t_termios_lock_in; struct termios t_termios_lock_out; struct termios t_termios; } ;
struct thread {int dummy; } ;
struct cdev {struct tty* si_drv1; } ;
typedef scalar_t__ caddr_t ;


 int NCCS ;

 int SIGTTOU ;
 scalar_t__ TTY_CALLOUT (struct tty*,struct cdev*) ;
 int curthread ;
 int tty_ioctl (struct tty*,int const,scalar_t__,int,struct thread*) ;
 int tty_unlock (struct tty*) ;
 int tty_wait_background (struct tty*,int ,int ) ;
 int ttydev_enter (struct tty*) ;

__attribute__((used)) static int
ttydev_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct tty *tp = dev->si_drv1;
 int error;

 error = ttydev_enter(tp);
 if (error)
  return (error);

 switch (cmd) {
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 145:
 case 144:
 case 143:
 case 141:
 case 140:
 case 139:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  error = tty_wait_background(tp, curthread, SIGTTOU);
  if (error)
   goto done;
 }

 if (cmd == 141 || cmd == 139 || cmd == 140) {
  struct termios *old = &tp->t_termios;
  struct termios *new = (struct termios *)data;
  struct termios *lock = TTY_CALLOUT(tp, dev) ?
      &tp->t_termios_lock_out : &tp->t_termios_lock_in;
  int cc;





  new->c_iflag = (old->c_iflag & lock->c_iflag) |
      (new->c_iflag & ~lock->c_iflag);
  new->c_oflag = (old->c_oflag & lock->c_oflag) |
      (new->c_oflag & ~lock->c_oflag);
  new->c_cflag = (old->c_cflag & lock->c_cflag) |
      (new->c_cflag & ~lock->c_cflag);
  new->c_lflag = (old->c_lflag & lock->c_lflag) |
      (new->c_lflag & ~lock->c_lflag);
  for (cc = 0; cc < NCCS; ++cc)
   if (lock->c_cc[cc])
    new->c_cc[cc] = old->c_cc[cc];
  if (lock->c_ispeed)
   new->c_ispeed = old->c_ispeed;
  if (lock->c_ospeed)
   new->c_ospeed = old->c_ospeed;
 }

 error = tty_ioctl(tp, cmd, data, fflag, td);
done: tty_unlock(tp);

 return (error);
}
