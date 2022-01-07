
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int dummy; } ;
struct TYPE_2__ {int c_lflag; } ;
struct tty {int t_flags; int t_outserwait; TYPE_1__ t_termios; } ;
struct cdev {struct tty* si_drv1; } ;


 int IO_NDELAY ;
 int SIGTTOU ;
 int TF_BUSY_OUT ;
 int TOSTOP ;
 int curthread ;
 int cv_signal (int *) ;
 int tty_unlock (struct tty*) ;
 int tty_wait (struct tty*,int *) ;
 int tty_wait_background (struct tty*,int ,int ) ;
 int ttydev_enter (struct tty*) ;
 int ttydisc_write (struct tty*,struct uio*,int) ;

__attribute__((used)) static int
ttydev_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct tty *tp = dev->si_drv1;
 int error;

 error = ttydev_enter(tp);
 if (error)
  return (error);

 if (tp->t_termios.c_lflag & TOSTOP) {
  error = tty_wait_background(tp, curthread, SIGTTOU);
  if (error)
   goto done;
 }

 if (ioflag & IO_NDELAY && tp->t_flags & TF_BUSY_OUT) {

  error = ttydisc_write(tp, uio, ioflag);
 } else {

  while (tp->t_flags & TF_BUSY_OUT) {
   error = tty_wait(tp, &tp->t_outserwait);
   if (error)
    goto done;
  }

  tp->t_flags |= TF_BUSY_OUT;
  error = ttydisc_write(tp, uio, ioflag);
  tp->t_flags &= ~TF_BUSY_OUT;
  cv_signal(&tp->t_outserwait);
 }

done: tty_unlock(tp);
 return (error);
}
