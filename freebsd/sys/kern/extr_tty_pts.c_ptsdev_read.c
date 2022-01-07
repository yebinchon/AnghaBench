
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct ucred {int dummy; } ;
struct tty {int t_mtx; } ;
struct thread {int dummy; } ;
struct pts_softc {int pts_flags; char pts_pkt; int pts_outwait; } ;
struct file {int f_flag; struct tty* f_data; } ;


 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 int PTS_FINISHED ;
 int PTS_PKT ;
 char TIOCPKT_DATA ;
 int cv_wait_sig (int *,int ) ;
 int tty_lock (struct tty*) ;
 struct pts_softc* tty_softc (struct tty*) ;
 int tty_unlock (struct tty*) ;
 scalar_t__ ttydisc_getc_poll (struct tty*) ;
 int ttydisc_getc_uio (struct tty*,struct uio*) ;
 int ureadc (char,struct uio*) ;

__attribute__((used)) static int
ptsdev_read(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct tty *tp = fp->f_data;
 struct pts_softc *psc = tty_softc(tp);
 int error = 0;
 char pkt;

 if (uio->uio_resid == 0)
  return (0);

 tty_lock(tp);

 for (;;) {





  if (psc->pts_flags & PTS_PKT && psc->pts_pkt) {
   pkt = psc->pts_pkt;
   psc->pts_pkt = 0;
   tty_unlock(tp);

   error = ureadc(pkt, uio);
   return (error);
  }
  if (ttydisc_getc_poll(tp)) {
   if (psc->pts_flags & PTS_PKT) {





    tty_unlock(tp);
    error = ureadc(TIOCPKT_DATA, uio);
    if (error)
     return (error);
    tty_lock(tp);
   }

   error = ttydisc_getc_uio(tp, uio);
   break;
  }


  if (psc->pts_flags & PTS_FINISHED)
   break;


  if (fp->f_flag & O_NONBLOCK) {
   error = EWOULDBLOCK;
   break;
  }
  error = cv_wait_sig(&psc->pts_outwait, tp->t_mtx);
  if (error != 0)
   break;
 }

 tty_unlock(tp);

 return (error);
}
