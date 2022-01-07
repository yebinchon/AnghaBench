
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int vq_num; struct virtio_softc* vq_vs; } ;
struct virtio_softc {struct vqueue_info* vs_queues; struct pci_devinst* vs_pi; struct virtio_consts* vs_vc; } ;
struct virtio_consts {int vc_nvq; } ;
struct pci_devinst {struct virtio_softc* pi_arg; } ;


 int assert (int) ;

void
vi_softc_linkup(struct virtio_softc *vs, struct virtio_consts *vc,
  void *dev_softc, struct pci_devinst *pi,
  struct vqueue_info *queues)
{
 int i;


 assert((void *)vs == dev_softc);
 vs->vs_vc = vc;
 vs->vs_pi = pi;
 pi->pi_arg = vs;

 vs->vs_queues = queues;
 for (i = 0; i < vc->vc_nvq; i++) {
  queues[i].vq_vs = vs;
  queues[i].vq_num = i;
 }
}
