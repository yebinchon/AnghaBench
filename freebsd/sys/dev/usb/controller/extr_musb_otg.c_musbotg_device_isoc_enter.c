
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct usb_xfer {int nframes; TYPE_2__* endpoint; scalar_t__ isoc_time_complete; TYPE_1__* xroot; } ;
struct musbotg_softc {int sc_bus; } ;
struct TYPE_4__ {int isoc_next; int is_synced; } ;
struct TYPE_3__ {int udev; int bus; } ;


 int DPRINTFN (int,char*,...) ;
 int MUSB2_MASK_FRAME ;
 int MUSB2_READ_2 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_FRAME ;
 struct musbotg_softc* MUSBOTG_BUS2SC (int ) ;
 scalar_t__ USB_SPEED_HIGH ;
 int musbotg_setup_standard_chain (struct usb_xfer*) ;
 scalar_t__ usb_isoc_time_expand (int *,int) ;
 scalar_t__ usbd_get_speed (int ) ;

__attribute__((used)) static void
musbotg_device_isoc_enter(struct usb_xfer *xfer)
{
 struct musbotg_softc *sc = MUSBOTG_BUS2SC(xfer->xroot->bus);
 uint32_t temp;
 uint32_t nframes;
 uint32_t fs_frames;

 DPRINTFN(5, "xfer=%p next=%d nframes=%d\n",
     xfer, xfer->endpoint->isoc_next, xfer->nframes);



 nframes = MUSB2_READ_2(sc, MUSB2_REG_FRAME);





 temp = (nframes - xfer->endpoint->isoc_next) & MUSB2_MASK_FRAME;

 if (usbd_get_speed(xfer->xroot->udev) == USB_SPEED_HIGH) {
  fs_frames = (xfer->nframes + 7) / 8;
 } else {
  fs_frames = xfer->nframes;
 }

 if ((xfer->endpoint->is_synced == 0) ||
     (temp < fs_frames)) {






  xfer->endpoint->isoc_next = (nframes + 3) & MUSB2_MASK_FRAME;
  xfer->endpoint->is_synced = 1;
  DPRINTFN(2, "start next=%d\n", xfer->endpoint->isoc_next);
 }




 temp = (xfer->endpoint->isoc_next - nframes) & MUSB2_MASK_FRAME;




 xfer->isoc_time_complete =
     usb_isoc_time_expand(&sc->sc_bus, nframes) + temp +
     fs_frames;


 xfer->endpoint->isoc_next += fs_frames;


 musbotg_setup_standard_chain(xfer);
}
