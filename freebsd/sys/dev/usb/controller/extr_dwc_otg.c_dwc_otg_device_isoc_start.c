
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int nframes; TYPE_5__* endpoint; scalar_t__ isoc_time_complete; TYPE_4__* xroot; } ;
struct TYPE_7__ {scalar_t__ status_high_speed; } ;
struct dwc_otg_softc {int sc_bus; TYPE_2__ sc_flags; } ;
struct TYPE_10__ {int isoc_next; int is_synced; } ;
struct TYPE_9__ {TYPE_3__* udev; int bus; } ;
struct TYPE_6__ {scalar_t__ usb_mode; } ;
struct TYPE_8__ {scalar_t__ speed; TYPE_1__ flags; } ;


 int DOTG_DSTS ;
 int DOTG_HFNUM ;
 int DPRINTFN (int,char*,...) ;
 int DSTS_SOFFN_GET (int) ;
 struct dwc_otg_softc* DWC_OTG_BUS2SC (int ) ;
 int DWC_OTG_FRAME_MASK ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int HFNUM_FRNUM_MASK ;
 scalar_t__ USB_MODE_HOST ;
 scalar_t__ USB_SPEED_HIGH ;
 int dwc_otg_setup_standard_chain (struct usb_xfer*) ;
 int dwc_otg_start_standard_chain (struct usb_xfer*) ;
 scalar_t__ usb_isoc_time_expand (int *,int) ;
 int usbd_xfer_get_fps_shift (struct usb_xfer*) ;

__attribute__((used)) static void
dwc_otg_device_isoc_start(struct usb_xfer *xfer)
{
 struct dwc_otg_softc *sc = DWC_OTG_BUS2SC(xfer->xroot->bus);
 uint32_t temp;
 uint32_t msframes;
 uint32_t framenum;
 uint8_t shift = usbd_xfer_get_fps_shift(xfer);

 DPRINTFN(6, "xfer=%p next=%d nframes=%d\n",
     xfer, xfer->endpoint->isoc_next, xfer->nframes);

 if (xfer->xroot->udev->flags.usb_mode == USB_MODE_HOST) {
  temp = DWC_OTG_READ_4(sc, DOTG_HFNUM);


  framenum = (temp & HFNUM_FRNUM_MASK);
 } else {
  temp = DWC_OTG_READ_4(sc, DOTG_DSTS);


  framenum = DSTS_SOFFN_GET(temp);
 }




 if (sc->sc_flags.status_high_speed)
  framenum /= 8;

 framenum &= DWC_OTG_FRAME_MASK;





 if (xfer->xroot->udev->speed == USB_SPEED_HIGH)
  msframes = ((xfer->nframes << shift) + 7) / 8;
 else
  msframes = xfer->nframes;





 temp = (framenum - xfer->endpoint->isoc_next) & DWC_OTG_FRAME_MASK;

 if ((xfer->endpoint->is_synced == 0) || (temp < msframes)) {






  xfer->endpoint->isoc_next = (framenum + 3) & DWC_OTG_FRAME_MASK;
  xfer->endpoint->is_synced = 1;
  DPRINTFN(3, "start next=%d\n", xfer->endpoint->isoc_next);
 }




 temp = (xfer->endpoint->isoc_next - framenum) & DWC_OTG_FRAME_MASK;




 xfer->isoc_time_complete =
  usb_isoc_time_expand(&sc->sc_bus, framenum) + temp + msframes;


 dwc_otg_setup_standard_chain(xfer);


 xfer->endpoint->isoc_next += msframes;


 dwc_otg_start_standard_chain(xfer);
}
