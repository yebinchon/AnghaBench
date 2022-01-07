
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int t_outpoll; int t_inpoll; } ;
struct thread {int dummy; } ;
struct cdev {struct tty* si_drv1; } ;


 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int TF_ZOMBIE ;
 int selrecord (struct thread*,int *) ;
 int tty_unlock (struct tty*) ;
 int ttydev_enter (struct tty*) ;
 scalar_t__ ttydisc_read_poll (struct tty*) ;
 scalar_t__ ttydisc_write_poll (struct tty*) ;

__attribute__((used)) static int
ttydev_poll(struct cdev *dev, int events, struct thread *td)
{
 struct tty *tp = dev->si_drv1;
 int error, revents = 0;

 error = ttydev_enter(tp);
 if (error)
  return ((events & (POLLIN|POLLRDNORM)) | POLLHUP);

 if (events & (POLLIN|POLLRDNORM)) {

  if (ttydisc_read_poll(tp) > 0)
   revents |= events & (POLLIN|POLLRDNORM);
 }

 if (tp->t_flags & TF_ZOMBIE) {

  revents |= POLLHUP;
 } else if (events & (POLLOUT|POLLWRNORM)) {

  if (ttydisc_write_poll(tp) > 0)
   revents |= events & (POLLOUT|POLLWRNORM);
 }

 if (revents == 0) {
  if (events & (POLLIN|POLLRDNORM))
   selrecord(td, &tp->t_inpoll);
  if (events & (POLLOUT|POLLWRNORM))
   selrecord(td, &tp->t_outpoll);
 }

 tty_unlock(tp);

 return (revents);
}
