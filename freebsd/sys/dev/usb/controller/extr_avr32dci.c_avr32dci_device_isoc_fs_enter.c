
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int nframes; int endpointno; TYPE_2__* endpoint; scalar_t__ isoc_time_complete; TYPE_1__* xroot; } ;
struct avr32dci_softc {int sc_bus; } ;
struct TYPE_4__ {int isoc_next; int is_synced; } ;
struct TYPE_3__ {int bus; } ;


 struct avr32dci_softc* AVR32_BUS2SC (int ) ;
 int AVR32_FNUM ;
 int AVR32_FRAME_MASK ;
 int AVR32_READ_4 (struct avr32dci_softc*,int ) ;
 int DPRINTFN (int,char*,...) ;
 int UE_ADDR ;
 int avr32dci_setup_standard_chain (struct usb_xfer*) ;
 scalar_t__ usb_isoc_time_expand (int *,int) ;

__attribute__((used)) static void
avr32dci_device_isoc_fs_enter(struct usb_xfer *xfer)
{
 struct avr32dci_softc *sc = AVR32_BUS2SC(xfer->xroot->bus);
 uint32_t temp;
 uint32_t nframes;
 uint8_t ep_no;

 DPRINTFN(6, "xfer=%p next=%d nframes=%d\n",
     xfer, xfer->endpoint->isoc_next, xfer->nframes);


 ep_no = xfer->endpointno & UE_ADDR;
 nframes = (AVR32_READ_4(sc, AVR32_FNUM) / 8);

 nframes &= AVR32_FRAME_MASK;





 temp = (nframes - xfer->endpoint->isoc_next) & AVR32_FRAME_MASK;

 if ((xfer->endpoint->is_synced == 0) ||
     (temp < xfer->nframes)) {






  xfer->endpoint->isoc_next = (nframes + 3) & AVR32_FRAME_MASK;
  xfer->endpoint->is_synced = 1;
  DPRINTFN(3, "start next=%d\n", xfer->endpoint->isoc_next);
 }




 temp = (xfer->endpoint->isoc_next - nframes) & AVR32_FRAME_MASK;




 xfer->isoc_time_complete =
     usb_isoc_time_expand(&sc->sc_bus, nframes) + temp +
     xfer->nframes;


 xfer->endpoint->isoc_next += xfer->nframes;


 avr32dci_setup_standard_chain(xfer);
}
