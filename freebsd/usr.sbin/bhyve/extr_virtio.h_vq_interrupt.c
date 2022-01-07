
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int vq_msix_idx; } ;
struct virtio_softc {int vs_pi; int vs_isr; } ;


 int VS_LOCK (struct virtio_softc*) ;
 int VS_UNLOCK (struct virtio_softc*) ;
 int VTCFG_ISR_QUEUES ;
 int pci_generate_msi (int ,int ) ;
 int pci_generate_msix (int ,int ) ;
 int pci_lintr_assert (int ) ;
 scalar_t__ pci_msix_enabled (int ) ;

__attribute__((used)) static inline void
vq_interrupt(struct virtio_softc *vs, struct vqueue_info *vq)
{

 if (pci_msix_enabled(vs->vs_pi))
  pci_generate_msix(vs->vs_pi, vq->vq_msix_idx);
 else {
  VS_LOCK(vs);
  vs->vs_isr |= VTCFG_ISR_QUEUES;
  pci_generate_msi(vs->vs_pi, 0);
  pci_lintr_assert(vs->vs_pi);
  VS_UNLOCK(vs);
 }
}
