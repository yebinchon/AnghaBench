
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct tty {int t_mtx; } ;
struct snp_softc {int snp_outwait; int snp_outq; struct tty* snp_tty; } ;
struct cdev {int dummy; } ;


 int EIO ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 int cv_wait_sig (int *,int ) ;
 int devfs_get_cdevpriv (void**) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyoutq_read_uio (int *,struct tty*,struct uio*) ;

__attribute__((used)) static int
snp_read(struct cdev *dev, struct uio *uio, int flag)
{
 int error, oresid = uio->uio_resid;
 struct snp_softc *ss;
 struct tty *tp;

 if (uio->uio_resid == 0)
  return (0);

 error = devfs_get_cdevpriv((void **)&ss);
 if (error != 0)
  return (error);

 tp = ss->snp_tty;
 if (tp == ((void*)0) || tty_gone(tp))
  return (EIO);

 tty_lock(tp);
 for (;;) {
  error = ttyoutq_read_uio(&ss->snp_outq, tp, uio);
  if (error != 0 || uio->uio_resid != oresid)
   break;


  if (flag & O_NONBLOCK) {
   error = EWOULDBLOCK;
   break;
  }
  error = cv_wait_sig(&ss->snp_outwait, tp->t_mtx);
  if (error != 0)
   break;
  if (tty_gone(tp)) {
   error = EIO;
   break;
  }
 }
 tty_unlock(tp);

 return (error);
}
