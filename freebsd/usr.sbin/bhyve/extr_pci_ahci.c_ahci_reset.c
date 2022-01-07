
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_ahci_softc {int ports; TYPE_1__* port; scalar_t__ lintr; int asc_pi; scalar_t__ is; int ghc; } ;
struct TYPE_2__ {int cmd; scalar_t__ sctl; scalar_t__ bctx; scalar_t__ is; scalar_t__ ie; } ;


 int AHCI_GHC_AE ;
 int AHCI_P_CMD_CPS ;
 int AHCI_P_CMD_POD ;
 int AHCI_P_CMD_SUD ;
 int ahci_port_reset (TYPE_1__*) ;
 int pci_lintr_deassert (int ) ;

__attribute__((used)) static void
ahci_reset(struct pci_ahci_softc *sc)
{
 int i;

 sc->ghc = AHCI_GHC_AE;
 sc->is = 0;

 if (sc->lintr) {
  pci_lintr_deassert(sc->asc_pi);
  sc->lintr = 0;
 }

 for (i = 0; i < sc->ports; i++) {
  sc->port[i].ie = 0;
  sc->port[i].is = 0;
  sc->port[i].cmd = (AHCI_P_CMD_SUD | AHCI_P_CMD_POD);
  if (sc->port[i].bctx)
   sc->port[i].cmd |= AHCI_P_CMD_CPS;
  sc->port[i].sctl = 0;
  ahci_port_reset(&sc->port[i]);
 }
}
