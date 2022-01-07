
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_dev; } ;
struct vtpci_interrupt {int vti_rid; int * vti_irq; int * vti_handler; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;

__attribute__((used)) static void
vtpci_free_interrupt(struct vtpci_softc *sc, struct vtpci_interrupt *intr)
{
 device_t dev;

 dev = sc->vtpci_dev;

 if (intr->vti_handler != ((void*)0)) {
  bus_teardown_intr(dev, intr->vti_irq, intr->vti_handler);
  intr->vti_handler = ((void*)0);
 }

 if (intr->vti_irq != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, intr->vti_rid,
      intr->vti_irq);
  intr->vti_irq = ((void*)0);
  intr->vti_rid = -1;
 }
}
