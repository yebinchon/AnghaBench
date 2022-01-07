
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_timeout_t ;
typedef void* uint8_t ;
struct bbb_transfer {size_t data_len; size_t data_rem; int error; size_t cmd_len; size_t state; int mtx; int cv; int * xfer; TYPE_1__* cbw; scalar_t__ actlen; scalar_t__ data_timeout; void* data_ptr; void* dir; void* lun; } ;
struct TYPE_2__ {scalar_t__ CBWCDB; } ;


 void* DIR_NONE ;
 int DPRINTFN (int,char*,int,char*,char*) ;
 scalar_t__ USB_MS_HZ ;
 int USB_MTX_LOCK (int *) ;
 int USB_MTX_UNLOCK (int *) ;
 int cv_wait (int *,int *) ;
 int memcpy (scalar_t__*,void*,size_t) ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__ usbd_transfer_pending (int ) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static int
bbb_command_start(struct bbb_transfer *sc, uint8_t dir, uint8_t lun,
    void *data_ptr, size_t data_len, void *cmd_ptr, size_t cmd_len,
    usb_timeout_t data_timeout)
{
 sc->lun = lun;
 sc->dir = data_len ? dir : DIR_NONE;
 sc->data_ptr = data_ptr;
 sc->data_len = data_len;
 sc->data_rem = data_len;
 sc->data_timeout = (data_timeout + USB_MS_HZ);
 sc->actlen = 0;
 sc->error = 0;
 sc->cmd_len = cmd_len;
 memset(&sc->cbw->CBWCDB, 0, sizeof(sc->cbw->CBWCDB));
 memcpy(&sc->cbw->CBWCDB, cmd_ptr, cmd_len);
 DPRINTFN(1, "SCSI cmd = %*D\n", (int)cmd_len, (char *)sc->cbw->CBWCDB, ":");

 USB_MTX_LOCK(&sc->mtx);
 usbd_transfer_start(sc->xfer[sc->state]);

 while (usbd_transfer_pending(sc->xfer[sc->state])) {
  cv_wait(&sc->cv, &sc->mtx);
 }
 USB_MTX_UNLOCK(&sc->mtx);
 return (sc->error);
}
