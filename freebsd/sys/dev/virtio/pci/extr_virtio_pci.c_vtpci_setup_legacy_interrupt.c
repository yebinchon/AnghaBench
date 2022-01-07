
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_interrupt {int vti_handler; int vti_irq; } ;
struct vtpci_softc {int vtpci_dev; struct vtpci_interrupt vtpci_device_interrupt; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;


 int bus_setup_intr (int ,int ,int,int *,int ,struct vtpci_softc*,int *) ;
 int vtpci_legacy_intr ;

__attribute__((used)) static int
vtpci_setup_legacy_interrupt(struct vtpci_softc *sc, enum intr_type type)
{
 struct vtpci_interrupt *intr;
 int error;

 intr = &sc->vtpci_device_interrupt;
 error = bus_setup_intr(sc->vtpci_dev, intr->vti_irq, type, ((void*)0),
     vtpci_legacy_intr, sc, &intr->vti_handler);

 return (error);
}
