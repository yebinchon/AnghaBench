
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {size_t uio_resid; TYPE_1__* uio_td; } ;
struct tpm_sc {scalar_t__ pending_data_length; int (* transmit ) (struct tpm_sc*,size_t) ;int dev_lock; int owner_tid; int discard_buffer_callout; int buf; int buf_cv; int dev; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_2__ {int td_tid; } ;


 int E2BIG ;
 int EINVAL ;
 size_t TPM_BUFSIZE ;
 size_t TPM_HEADER_SIZE ;
 int TPM_READ_TIMEOUT ;
 int callout_reset (int *,int,int ,struct tpm_sc*) ;
 int cv_wait (int *,int *) ;
 int device_printf (int ,char*) ;
 int stub1 (struct tpm_sc*,size_t) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int tick ;
 int tpm20_discard_buffer ;
 int uiomove (int ,size_t,struct uio*) ;

int
tpm20_write(struct cdev *dev, struct uio *uio, int flags)
{
 struct tpm_sc *sc;
 size_t byte_count;
 int result = 0;

 sc = (struct tpm_sc *)dev->si_drv1;

 byte_count = uio->uio_resid;
 if (byte_count < TPM_HEADER_SIZE) {
  device_printf(sc->dev,
      "Requested transfer is too small\n");
  return (EINVAL);
 }

 if (byte_count > TPM_BUFSIZE) {
  device_printf(sc->dev,
      "Requested transfer is too large\n");
  return (E2BIG);
 }

 sx_xlock(&sc->dev_lock);

 while (sc->pending_data_length != 0)
  cv_wait(&sc->buf_cv, &sc->dev_lock);

 result = uiomove(sc->buf, byte_count, uio);
 if (result != 0) {
  sx_xunlock(&sc->dev_lock);
  return (result);
 }

 result = sc->transmit(sc, byte_count);

 if (result == 0) {
  callout_reset(&sc->discard_buffer_callout,
      TPM_READ_TIMEOUT / tick, tpm20_discard_buffer, sc);
  sc->owner_tid = uio->uio_td->td_tid;
 }

 sx_xunlock(&sc->dev_lock);
 return (result);
}
