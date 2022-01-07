
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct usb_xfer {int nframes; TYPE_2__* endpoint; scalar_t__ isoc_time_complete; TYPE_1__* xroot; } ;
struct atmegadci_softc {int sc_bus; } ;
struct TYPE_4__ {int isoc_next; int is_synced; } ;
struct TYPE_3__ {int bus; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (int ) ;
 int ATMEGA_FRAME_MASK ;
 int ATMEGA_READ_1 (struct atmegadci_softc*,int ) ;
 int ATMEGA_UDFNUMH ;
 int ATMEGA_UDFNUML ;
 int DPRINTFN (int,char*,...) ;
 int atmegadci_setup_standard_chain (struct usb_xfer*) ;
 scalar_t__ usb_isoc_time_expand (int *,int) ;

__attribute__((used)) static void
atmegadci_device_isoc_fs_enter(struct usb_xfer *xfer)
{
 struct atmegadci_softc *sc = ATMEGA_BUS2SC(xfer->xroot->bus);
 uint32_t temp;
 uint32_t nframes;

 DPRINTFN(6, "xfer=%p next=%d nframes=%d\n",
     xfer, xfer->endpoint->isoc_next, xfer->nframes);



 nframes =
     (ATMEGA_READ_1(sc, ATMEGA_UDFNUMH) << 8) |
     (ATMEGA_READ_1(sc, ATMEGA_UDFNUML));

 nframes &= ATMEGA_FRAME_MASK;





 temp = (nframes - xfer->endpoint->isoc_next) & ATMEGA_FRAME_MASK;

 if ((xfer->endpoint->is_synced == 0) ||
     (temp < xfer->nframes)) {






  xfer->endpoint->isoc_next = (nframes + 3) & ATMEGA_FRAME_MASK;
  xfer->endpoint->is_synced = 1;
  DPRINTFN(3, "start next=%d\n", xfer->endpoint->isoc_next);
 }




 temp = (xfer->endpoint->isoc_next - nframes) & ATMEGA_FRAME_MASK;




 xfer->isoc_time_complete =
     usb_isoc_time_expand(&sc->sc_bus, nframes) + temp +
     xfer->nframes;


 xfer->endpoint->isoc_next += xfer->nframes;


 atmegadci_setup_standard_chain(xfer);
}
