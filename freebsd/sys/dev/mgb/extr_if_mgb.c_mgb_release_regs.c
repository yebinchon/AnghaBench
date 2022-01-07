
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dev; int * regs; } ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int pci_disable_busmaster (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
mgb_release_regs(struct mgb_softc *sc)
{
 int error = 0;

 if (sc->regs != ((void*)0))
  error = bus_release_resource(sc->dev, SYS_RES_MEMORY,
      rman_get_rid(sc->regs), sc->regs);
 sc->regs = ((void*)0);
 pci_disable_busmaster(sc->dev);
 return error;
}
