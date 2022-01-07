
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uio {int uio_resid; } ;
struct seq_softc {int unit; int fflags; int seq_lock; int in_q; int in_cv; } ;
struct cdev {struct seq_softc* si_drv1; } ;


 int EIO ;
 int ENXIO ;
 int EWOULDBLOCK ;
 int FREAD ;
 int MIDIQ_DEQ (int ,int *,int) ;
 scalar_t__ MIDIQ_EMPTY (int ) ;
 int MIDIQ_LEN (int ) ;
 int MIN (int,int) ;
 int O_NONBLOCK ;
 int SEQ_DEBUG (int,int ) ;
 int SEQ_RSIZE ;
 int cv_wait_sig (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,...) ;
 int uiomove (int *,int,struct uio*) ;

int
mseq_read(struct cdev *i_dev, struct uio *uio, int ioflag)
{
 int retval, used;
 struct seq_softc *scp = i_dev->si_drv1;


 u_char buf[32];

 if (scp == ((void*)0))
  return ENXIO;

 SEQ_DEBUG(7, printf("mseq_read: unit %d, resid %zd.\n",
     scp->unit, uio->uio_resid));

 mtx_lock(&scp->seq_lock);
 if ((scp->fflags & FREAD) == 0) {
  SEQ_DEBUG(2, printf("mseq_read: unit %d is not for reading.\n",
      scp->unit));
  retval = EIO;
  goto err1;
 }
 while (uio->uio_resid > 0) {
  while (MIDIQ_EMPTY(scp->in_q)) {
   retval = EWOULDBLOCK;




   if (scp->fflags & O_NONBLOCK)
    goto err1;
   if (ioflag & O_NONBLOCK)
    goto err1;

   retval = cv_wait_sig(&scp->in_cv, &scp->seq_lock);
   if (retval != 0)
    goto err1;
  }

  used = MIN(MIDIQ_LEN(scp->in_q), uio->uio_resid);
  used = MIN(used, 32);

  SEQ_DEBUG(8, printf("midiread: uiomove cc=%d\n", used));
  MIDIQ_DEQ(scp->in_q, buf, used);
  mtx_unlock(&scp->seq_lock);
  retval = uiomove(buf, used, uio);
  mtx_lock(&scp->seq_lock);
  if (retval)
   goto err1;
 }

 retval = 0;
err1:
 mtx_unlock(&scp->seq_lock);
 SEQ_DEBUG(6, printf("mseq_read: ret %d, resid %zd.\n",
     retval, uio->uio_resid));

 return retval;
}
