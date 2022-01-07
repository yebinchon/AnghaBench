
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int * regs; int dev; } ;


 int ENXIO ;
 int MGB_BAR ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
mgb_alloc_regs(struct mgb_softc *sc)
{
 int rid;

 rid = PCIR_BAR(MGB_BAR);
 pci_enable_busmaster(sc->dev);
 sc->regs = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (sc->regs == ((void*)0))
   return ENXIO;

 return (0);
}
