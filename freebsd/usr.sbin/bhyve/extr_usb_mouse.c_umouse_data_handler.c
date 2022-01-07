
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_data_xfer_block {int blen; int processed; int bdone; int * buf; } ;
struct usb_data_xfer {int head; int ndata; struct usb_data_xfer_block* data; } ;
struct umouse_softc {int polling; int mtx; int um_report; scalar_t__ newdata; } ;


 int DPRINTF (char*) ;
 int USB_DATA_SET_ERRCODE (struct usb_data_xfer_block*,int ) ;
 int USB_ERR_CANCELLED ;
 int USB_ERR_NOMEM ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_ERR_SHORT_XFER ;
 int USB_ERR_STALLED ;
 int USB_MAX_XFER_BLOCKS ;
 int USB_NAK ;
 int USB_STALL ;
 int memcpy (int *,int *,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int
umouse_data_handler(void *scarg, struct usb_data_xfer *xfer, int dir,
     int epctx)
{
 struct umouse_softc *sc;
 struct usb_data_xfer_block *data;
 uint8_t *udata;
 int len, i, idx;
 int err;

 DPRINTF(("umouse handle data - DIR=%s|EP=%d, blen %d\r\n",
         dir ? "IN" : "OUT", epctx, xfer->data[0].blen));



 udata = ((void*)0);
 err = USB_ERR_NORMAL_COMPLETION;


 data = ((void*)0);
 idx = xfer->head;
 for (i = 0; i < xfer->ndata; i++) {
  data = &xfer->data[idx];
  if (data->buf != ((void*)0) && data->blen != 0) {
   break;
  } else {
   data->processed = 1;
   data = ((void*)0);
  }
  idx = (idx + 1) % USB_MAX_XFER_BLOCKS;
 }
 if (!data)
  goto done;

 udata = data->buf;
 len = data->blen;

 if (udata == ((void*)0)) {
  DPRINTF(("umouse no buffer provided for input\r\n"));
  err = USB_ERR_NOMEM;
  goto done;
 }

 sc = scarg;

 if (dir) {

  pthread_mutex_lock(&sc->mtx);

  if (!sc->newdata) {
   err = USB_ERR_CANCELLED;
   USB_DATA_SET_ERRCODE(&xfer->data[xfer->head], USB_NAK);
   pthread_mutex_unlock(&sc->mtx);
   goto done;
  }

  if (sc->polling) {
   err = USB_ERR_STALLED;
   USB_DATA_SET_ERRCODE(data, USB_STALL);
   pthread_mutex_unlock(&sc->mtx);
   goto done;
  }
  sc->polling = 1;

  if (len > 0) {
   sc->newdata = 0;

   data->processed = 1;
   data->bdone += 6;
   memcpy(udata, &sc->um_report, 6);
   data->blen = len - 6;
   if (data->blen > 0)
    err = USB_ERR_SHORT_XFER;
  }

  sc->polling = 0;
  pthread_mutex_unlock(&sc->mtx);
 } else {
  USB_DATA_SET_ERRCODE(data, USB_STALL);
  err = USB_ERR_STALLED;
 }

done:
 return (err);
}
