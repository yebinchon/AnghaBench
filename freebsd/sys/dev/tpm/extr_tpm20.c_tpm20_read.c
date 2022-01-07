
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_resid; TYPE_1__* uio_td; } ;
struct tpm_sc {scalar_t__ owner_tid; int dev_lock; int buf_cv; scalar_t__ pending_data_length; scalar_t__ buf; int discard_buffer_callout; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef int caddr_t ;
struct TYPE_2__ {scalar_t__ td_tid; } ;


 int EPERM ;
 int ETIMEDOUT ;
 size_t MIN (scalar_t__,int ) ;
 int TPM_BUFSIZE ;
 int callout_stop (int *) ;
 int cv_signal (int *) ;
 int memset (scalar_t__,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int uiomove (int ,size_t,struct uio*) ;

int
tpm20_read(struct cdev *dev, struct uio *uio, int flags)
{
 struct tpm_sc *sc;
 size_t bytes_to_transfer;
 int result = 0;

 sc = (struct tpm_sc *)dev->si_drv1;

 callout_stop(&sc->discard_buffer_callout);
 sx_xlock(&sc->dev_lock);
 if (sc->owner_tid != uio->uio_td->td_tid) {
  sx_xunlock(&sc->dev_lock);
  return (EPERM);
 }

 bytes_to_transfer = MIN(sc->pending_data_length, uio->uio_resid);
 if (bytes_to_transfer > 0) {
  result = uiomove((caddr_t) sc->buf, bytes_to_transfer, uio);
  memset(sc->buf, 0, TPM_BUFSIZE);
  sc->pending_data_length = 0;
  cv_signal(&sc->buf_cv);
 } else {
  result = ETIMEDOUT;
 }

 sx_xunlock(&sc->dev_lock);

 return (result);
}
