
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_interrupt {int vti_handler; int vti_irq; } ;
struct vtpci_softc {int vtpci_flags; struct vtpci_interrupt* vtpci_msix_vq_interrupts; struct vtpci_interrupt vtpci_device_interrupt; int vtpci_dev; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef int device_t ;


 int VTPCI_FLAG_SHARED_MSIX ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct vtpci_softc*,int *) ;
 int vtpci_config_intr ;
 int vtpci_set_host_msix_vectors (struct vtpci_softc*) ;
 int vtpci_setup_pervq_msix_interrupts (struct vtpci_softc*,int) ;
 int vtpci_vq_shared_intr ;
 int * vtpci_vq_shared_intr_filter ;

__attribute__((used)) static int
vtpci_setup_msix_interrupts(struct vtpci_softc *sc, enum intr_type type)
{
 device_t dev;
 struct vtpci_interrupt *intr;
 int error;

 dev = sc->vtpci_dev;
 intr = &sc->vtpci_device_interrupt;

 error = bus_setup_intr(dev, intr->vti_irq, type, ((void*)0),
     vtpci_config_intr, sc, &intr->vti_handler);
 if (error)
  return (error);

 if (sc->vtpci_flags & VTPCI_FLAG_SHARED_MSIX) {
  intr = sc->vtpci_msix_vq_interrupts;
  error = bus_setup_intr(dev, intr->vti_irq, type,
      vtpci_vq_shared_intr_filter, vtpci_vq_shared_intr, sc,
      &intr->vti_handler);
 } else
  error = vtpci_setup_pervq_msix_interrupts(sc, type);

 return (error ? error : vtpci_set_host_msix_vectors(sc));
}
