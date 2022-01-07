
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_sc {int dev; int dev_lock; int buf_cv; scalar_t__ pending_data_length; int buf; int discard_buffer_callout; } ;


 int TPM_BUFSIZE ;
 scalar_t__ callout_pending (int *) ;
 int cv_signal (int *) ;
 int device_printf (int ,char*) ;
 int memset (int ,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
tpm20_discard_buffer(void *arg)
{
 struct tpm_sc *sc;

 sc = (struct tpm_sc *)arg;
 if (callout_pending(&sc->discard_buffer_callout))
  return;

 sx_xlock(&sc->dev_lock);

 memset(sc->buf, 0, TPM_BUFSIZE);
 sc->pending_data_length = 0;

 cv_signal(&sc->buf_cv);
 sx_xunlock(&sc->dev_lock);

 device_printf(sc->dev,
     "User failed to read buffer in time\n");
}
