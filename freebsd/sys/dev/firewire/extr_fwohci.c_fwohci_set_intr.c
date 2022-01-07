
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct fwohci_softc {int intmask; TYPE_1__ fc; } ;
struct firewire_comm {int dummy; } ;


 int FWOHCI_INTMASK ;
 int FWOHCI_INTMASKCLR ;
 int OHCI_INT_EN ;
 int OWRITE (struct fwohci_softc*,int ,int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ firewire_debug ;

__attribute__((used)) static void
fwohci_set_intr(struct firewire_comm *fc, int enable)
{
 struct fwohci_softc *sc;

 sc = (struct fwohci_softc *)fc;
 if (firewire_debug)
  device_printf(sc->fc.dev, "fwohci_set_intr: %d\n", enable);
 if (enable) {
  sc->intmask |= OHCI_INT_EN;
  OWRITE(sc, FWOHCI_INTMASK, OHCI_INT_EN);
 } else {
  sc->intmask &= ~OHCI_INT_EN;
  OWRITE(sc, FWOHCI_INTMASKCLR, OHCI_INT_EN);
 }
}
