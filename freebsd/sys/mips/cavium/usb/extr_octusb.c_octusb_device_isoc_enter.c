
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct usb_xfer {int nframes; TYPE_3__* endpoint; scalar_t__ isoc_time_complete; TYPE_2__* xroot; } ;
struct octusb_softc {int sc_bus; TYPE_1__* sc_port; } ;
struct TYPE_8__ {size_t port_index; } ;
struct TYPE_7__ {int isoc_next; int is_synced; } ;
struct TYPE_6__ {TYPE_4__* udev; int bus; } ;
struct TYPE_5__ {int state; } ;


 int DPRINTFN (int,char*,...) ;
 struct octusb_softc* OCTUSB_BUS2SC (int ) ;
 scalar_t__ USB_SPEED_HIGH ;
 int cvmx_usb_get_frame_number (int *) ;
 scalar_t__ usb_isoc_time_expand (int *,int) ;
 scalar_t__ usbd_get_speed (TYPE_4__*) ;

__attribute__((used)) static void
octusb_device_isoc_enter(struct usb_xfer *xfer)
{
 struct octusb_softc *sc = OCTUSB_BUS2SC(xfer->xroot->bus);
 uint32_t temp;
 uint32_t frame_count;
 uint32_t fs_frames;

 DPRINTFN(5, "xfer=%p next=%d nframes=%d\n",
     xfer, xfer->endpoint->isoc_next, xfer->nframes);



 frame_count = cvmx_usb_get_frame_number(
     &sc->sc_port[xfer->xroot->udev->port_index].state);





 temp = (frame_count - xfer->endpoint->isoc_next) & 0x7FF;

 if (usbd_get_speed(xfer->xroot->udev) == USB_SPEED_HIGH) {
  fs_frames = (xfer->nframes + 7) / 8;
 } else {
  fs_frames = xfer->nframes;
 }

 if ((xfer->endpoint->is_synced == 0) || (temp < fs_frames)) {






  xfer->endpoint->isoc_next = (frame_count + 3) & 0x7FF;
  xfer->endpoint->is_synced = 1;
  DPRINTFN(2, "start next=%d\n", xfer->endpoint->isoc_next);
 }




 temp = (xfer->endpoint->isoc_next - frame_count) & 0x7FF;




 xfer->isoc_time_complete =
     usb_isoc_time_expand(&sc->sc_bus, frame_count) + temp +
     fs_frames;


 xfer->endpoint->isoc_next += fs_frames;
}
