
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uhid_snes_softc {int sc_fflags; struct usb_fifo** sc_fifo_open; int * sc_transfer; int sc_mutex; } ;


 int EBUSY ;
 int ENOMEM ;
 int UHID_SNES_IFQ_MAX_LEN ;
 size_t UHID_SNES_INTR_DT_RD ;
 size_t USB_FIFO_RX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uhid_snes_reset (struct uhid_snes_softc*) ;
 int usb_fifo_alloc_buffer (struct usb_fifo*,int ,int ) ;
 struct uhid_snes_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_xfer_max_len (int ) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
uhid_snes_open(struct usb_fifo *fifo, int fflags)
{
 struct uhid_snes_softc *sc = usb_fifo_softc(fifo);
 int error;

 if (sc->sc_fflags & fflags) {
  uhid_snes_reset(sc);
  return (EBUSY);
 }

 mtx_lock(&sc->sc_mutex);
 usbd_xfer_set_stall(sc->sc_transfer[UHID_SNES_INTR_DT_RD]);
 mtx_unlock(&sc->sc_mutex);

 error = usb_fifo_alloc_buffer(fifo,
     usbd_xfer_max_len(sc->sc_transfer[UHID_SNES_INTR_DT_RD]),
     UHID_SNES_IFQ_MAX_LEN);
 if (error)
  return (ENOMEM);

 sc->sc_fifo_open[USB_FIFO_RX] = fifo;

 return (0);
}
