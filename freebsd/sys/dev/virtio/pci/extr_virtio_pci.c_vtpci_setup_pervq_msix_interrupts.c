
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_virtqueue {int vtv_vq; scalar_t__ vtv_no_intr; } ;
struct vtpci_softc {int vtpci_nvqs; int vtpci_dev; struct vtpci_virtqueue* vtpci_vqs; struct vtpci_interrupt* vtpci_msix_vq_interrupts; } ;
struct vtpci_interrupt {int vti_handler; int vti_irq; } ;
typedef enum intr_type { ____Placeholder_intr_type } intr_type ;


 int bus_setup_intr (int ,int ,int,int ,int ,int ,int *) ;
 int vtpci_vq_intr ;
 int vtpci_vq_intr_filter ;

__attribute__((used)) static int
vtpci_setup_pervq_msix_interrupts(struct vtpci_softc *sc, enum intr_type type)
{
 struct vtpci_virtqueue *vqx;
 struct vtpci_interrupt *intr;
 int i, error;

 intr = sc->vtpci_msix_vq_interrupts;

 for (i = 0; i < sc->vtpci_nvqs; i++) {
  vqx = &sc->vtpci_vqs[i];

  if (vqx->vtv_no_intr)
   continue;

  error = bus_setup_intr(sc->vtpci_dev, intr->vti_irq, type,
      vtpci_vq_intr_filter, vtpci_vq_intr, vqx->vtv_vq,
      &intr->vti_handler);
  if (error)
   return (error);

  intr++;
 }

 return (0);
}
