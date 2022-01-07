
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct tty {int dummy; } ;
struct snp_softc {struct tty* snp_tty; } ;
struct cdev {int dummy; } ;


 int EIO ;
 int ENXIO ;
 int SNP_INPUT_BUFSIZE ;
 int devfs_get_cdevpriv (void**) ;
 int imin (scalar_t__,int) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint_done (struct tty*) ;
 int ttydisc_rint_simple (struct tty*,char*,int) ;
 int uiomove (char*,int,struct uio*) ;

__attribute__((used)) static int
snp_write(struct cdev *dev, struct uio *uio, int flag)
{
 struct snp_softc *ss;
 struct tty *tp;
 int error, len;
 char in[SNP_INPUT_BUFSIZE];

 error = devfs_get_cdevpriv((void **)&ss);
 if (error != 0)
  return (error);

 tp = ss->snp_tty;
 if (tp == ((void*)0) || tty_gone(tp))
  return (EIO);

 while (uio->uio_resid > 0) {

  len = imin(uio->uio_resid, sizeof in);
  error = uiomove(in, len, uio);
  if (error != 0)
   return (error);

  tty_lock(tp);


  if (tty_gone(tp)) {
   tty_unlock(tp);
   return (ENXIO);
  }






  ttydisc_rint_simple(tp, in, len);
  ttydisc_rint_done(tp);

  tty_unlock(tp);
 }

 return (0);
}
