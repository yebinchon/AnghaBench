
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct usb_xfer {int nframes; TYPE_2__* endpoint; scalar_t__ isoc_time_complete; TYPE_1__* xroot; } ;
struct saf1761_otg_softc {int sc_bus; } ;
struct TYPE_4__ {int isoc_next; int is_synced; } ;
struct TYPE_3__ {int bus; } ;


 int DPRINTFN (int,char*,...) ;
 struct saf1761_otg_softc* SAF1761_OTG_BUS2SC (int ) ;
 int SAF1761_READ_LE_4 (struct saf1761_otg_softc*,int ) ;
 int SOTG_FRINDEX ;
 int SOTG_FRINDEX_MASK ;
 int saf1761_otg_setup_standard_chain (struct usb_xfer*) ;
 scalar_t__ usb_isoc_time_expand (int *,int) ;

__attribute__((used)) static void
saf1761_otg_host_isoc_enter(struct usb_xfer *xfer)
{
 struct saf1761_otg_softc *sc = SAF1761_OTG_BUS2SC(xfer->xroot->bus);
 uint32_t temp;
 uint32_t nframes;

 DPRINTFN(6, "xfer=%p next=%d nframes=%d\n",
     xfer, xfer->endpoint->isoc_next, xfer->nframes);



 nframes = (SAF1761_READ_LE_4(sc, SOTG_FRINDEX) & SOTG_FRINDEX_MASK) >> 3;





 temp = (nframes - xfer->endpoint->isoc_next) & (SOTG_FRINDEX_MASK >> 3);

 if ((xfer->endpoint->is_synced == 0) ||
     (temp < xfer->nframes)) {






  xfer->endpoint->isoc_next = (nframes + 3) & (SOTG_FRINDEX_MASK >> 3);
  xfer->endpoint->is_synced = 1;
  DPRINTFN(3, "start next=%d\n", xfer->endpoint->isoc_next);
 }




 temp = (xfer->endpoint->isoc_next - nframes) & (SOTG_FRINDEX_MASK >> 3);




 xfer->isoc_time_complete =
     usb_isoc_time_expand(&sc->sc_bus, nframes) + temp +
     xfer->nframes;


 xfer->endpoint->isoc_next += xfer->nframes;


 saf1761_otg_setup_standard_chain(xfer);
}
