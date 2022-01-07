
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct ucred {int dummy; } ;
struct tty {int t_mtx; } ;
struct thread {int dummy; } ;
struct pts_softc {int pts_flags; int pts_inwait; } ;
struct file {int f_flag; struct tty* f_data; } ;


 int EIO ;
 int EWOULDBLOCK ;
 size_t MIN (scalar_t__,int) ;
 int MPASS (int) ;
 int O_NONBLOCK ;
 int PTS_FINISHED ;
 int cv_wait_sig (int *,int ) ;
 int tty_lock (struct tty*) ;
 struct pts_softc* tty_softc (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint_done (struct tty*) ;
 size_t ttydisc_rint_simple (struct tty*,char*,size_t) ;
 int uiomove (char*,size_t,struct uio*) ;

__attribute__((used)) static int
ptsdev_write(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
 struct tty *tp = fp->f_data;
 struct pts_softc *psc = tty_softc(tp);
 char ib[256], *ibstart;
 size_t iblen, rintlen;
 int error = 0;

 if (uio->uio_resid == 0)
  return (0);

 for (;;) {
  ibstart = ib;
  iblen = MIN(uio->uio_resid, sizeof ib);
  error = uiomove(ib, iblen, uio);

  tty_lock(tp);
  if (error != 0) {
   iblen = 0;
   goto done;
  }





  MPASS(iblen > 0);
  do {
   rintlen = ttydisc_rint_simple(tp, ibstart, iblen);
   ibstart += rintlen;
   iblen -= rintlen;
   if (iblen == 0) {

    break;
   }


   if (psc->pts_flags & PTS_FINISHED) {
    error = EIO;
    goto done;
   }


   if (fp->f_flag & O_NONBLOCK) {
    error = EWOULDBLOCK;
    goto done;
   }


   ttydisc_rint_done(tp);
   error = cv_wait_sig(&psc->pts_inwait, tp->t_mtx);
   if (error != 0)
    goto done;
  } while (iblen > 0);

  if (uio->uio_resid == 0)
   break;
  tty_unlock(tp);
 }

done: ttydisc_rint_done(tp);
 tty_unlock(tp);





 uio->uio_resid += iblen;
 return (error);
}
