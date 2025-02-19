
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtpci_interrupt {int dummy; } ;
struct vtpci_softc {int vtpci_nvqs; int vtpci_flags; TYPE_1__* vtpci_vqs; struct vtpci_interrupt* vtpci_msix_vq_interrupts; struct vtpci_interrupt vtpci_device_interrupt; } ;
struct TYPE_2__ {scalar_t__ vtv_no_intr; } ;


 int VIRTIO_MSI_CONFIG_VECTOR ;
 int VIRTIO_MSI_QUEUE_VECTOR ;
 int VTPCI_FLAG_SHARED_MSIX ;
 int vtpci_register_msix_vector (struct vtpci_softc*,int,struct vtpci_interrupt*) ;
 int vtpci_select_virtqueue (struct vtpci_softc*,int) ;

__attribute__((used)) static int
vtpci_set_host_msix_vectors(struct vtpci_softc *sc)
{
 struct vtpci_interrupt *intr, *tintr;
 int idx, offset, error;

 intr = &sc->vtpci_device_interrupt;
 offset = VIRTIO_MSI_CONFIG_VECTOR;

 error = vtpci_register_msix_vector(sc, offset, intr);
 if (error)
  return (error);

 intr = sc->vtpci_msix_vq_interrupts;
 offset = VIRTIO_MSI_QUEUE_VECTOR;

 for (idx = 0; idx < sc->vtpci_nvqs; idx++) {
  vtpci_select_virtqueue(sc, idx);

  if (sc->vtpci_vqs[idx].vtv_no_intr)
   tintr = ((void*)0);
  else
   tintr = intr;

  error = vtpci_register_msix_vector(sc, offset, tintr);
  if (error)
   break;





  if (!sc->vtpci_vqs[idx].vtv_no_intr &&
      (sc->vtpci_flags & VTPCI_FLAG_SHARED_MSIX) == 0)
   intr++;
 }

 return (error);
}
