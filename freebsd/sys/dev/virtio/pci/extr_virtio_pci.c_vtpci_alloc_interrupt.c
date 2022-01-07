
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_dev; } ;
struct vtpci_interrupt {int vti_rid; struct resource* vti_irq; } ;
struct resource {int dummy; } ;


 int ENXIO ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;

__attribute__((used)) static int
vtpci_alloc_interrupt(struct vtpci_softc *sc, int rid, int flags,
    struct vtpci_interrupt *intr)
{
 struct resource *irq;

 irq = bus_alloc_resource_any(sc->vtpci_dev, SYS_RES_IRQ, &rid, flags);
 if (irq == ((void*)0))
  return (ENXIO);

 intr->vti_irq = irq;
 intr->vti_rid = rid;

 return (0);
}
