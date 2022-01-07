
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct pts_softc {int pts_flags; int pts_inpoll; int pts_outpoll; scalar_t__ pts_pkt; } ;
struct file {struct tty* f_data; } ;


 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int PTS_FINISHED ;
 int PTS_PKT ;
 int selrecord (struct thread*,int *) ;
 int tty_lock (struct tty*) ;
 struct pts_softc* tty_softc (struct tty*) ;
 int tty_unlock (struct tty*) ;
 scalar_t__ ttydisc_getc_poll (struct tty*) ;
 scalar_t__ ttydisc_rint_poll (struct tty*) ;

__attribute__((used)) static int
ptsdev_poll(struct file *fp, int events, struct ucred *active_cred,
    struct thread *td)
{
 struct tty *tp = fp->f_data;
 struct pts_softc *psc = tty_softc(tp);
 int revents = 0;

 tty_lock(tp);

 if (psc->pts_flags & PTS_FINISHED) {

  tty_unlock(tp);
  return ((events & (POLLIN|POLLRDNORM)) | POLLHUP);
 }

 if (events & (POLLIN|POLLRDNORM)) {

  if (ttydisc_getc_poll(tp) ||
      (psc->pts_flags & PTS_PKT && psc->pts_pkt))
   revents |= events & (POLLIN|POLLRDNORM);
 }
 if (events & (POLLOUT|POLLWRNORM)) {

  if (ttydisc_rint_poll(tp))
   revents |= events & (POLLOUT|POLLWRNORM);
 }







 if (revents == 0) {





  if (events & (POLLIN|POLLRDNORM))
   selrecord(td, &psc->pts_outpoll);
  if (events & (POLLOUT|POLLWRNORM))
   selrecord(td, &psc->pts_inpoll);
 }

 tty_unlock(tp);

 return (revents);
}
