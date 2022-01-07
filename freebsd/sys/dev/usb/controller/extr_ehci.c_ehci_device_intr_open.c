
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct usb_xfer {int interval; int qh_pos; TYPE_1__* xroot; } ;
struct TYPE_5__ {scalar_t__* sc_intr_stat; } ;
typedef TYPE_2__ ehci_softc_t ;
struct TYPE_4__ {int bus; } ;


 int DPRINTFN (int,char*,int,int) ;
 TYPE_2__* EHCI_BUS2SC (int ) ;
 int EHCI_VIRTUAL_FRAMELIST_COUNT ;
 int usb_hs_bandwidth_alloc (struct usb_xfer*) ;

__attribute__((used)) static void
ehci_device_intr_open(struct usb_xfer *xfer)
{
 ehci_softc_t *sc = EHCI_BUS2SC(xfer->xroot->bus);
 uint16_t best;
 uint16_t bit;
 uint16_t x;

 usb_hs_bandwidth_alloc(xfer);





 best = 0;
 bit = EHCI_VIRTUAL_FRAMELIST_COUNT / 2;
 while (bit) {
  if (xfer->interval >= bit) {
   x = bit;
   best = bit;
   while (x & bit) {
    if (sc->sc_intr_stat[x] <
        sc->sc_intr_stat[best]) {
     best = x;
    }
    x++;
   }
   break;
  }
  bit >>= 1;
 }

 sc->sc_intr_stat[best]++;
 xfer->qh_pos = best;

 DPRINTFN(3, "best=%d interval=%d\n",
     best, xfer->interval);
}
