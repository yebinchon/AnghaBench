
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vqueue_info {void* vq_msix_idx; scalar_t__ vq_pfn; scalar_t__ vq_save_used; scalar_t__ vq_next_used; scalar_t__ vq_last_avail; scalar_t__ vq_flags; } ;
struct virtio_softc {void* vs_msix_cfg_idx; scalar_t__ vs_isr; int vs_pi; scalar_t__ vs_curq; scalar_t__ vs_negotiated_caps; struct vqueue_info* vs_queues; TYPE_1__* vs_vc; scalar_t__ vs_mtx; } ;
struct TYPE_2__ {int vc_nvq; } ;


 void* VIRTIO_MSI_NO_VECTOR ;
 int assert (int ) ;
 int pci_lintr_deassert (int ) ;
 int pthread_mutex_isowned_np (scalar_t__) ;

void
vi_reset_dev(struct virtio_softc *vs)
{
 struct vqueue_info *vq;
 int i, nvq;

 if (vs->vs_mtx)
  assert(pthread_mutex_isowned_np(vs->vs_mtx));

 nvq = vs->vs_vc->vc_nvq;
 for (vq = vs->vs_queues, i = 0; i < nvq; vq++, i++) {
  vq->vq_flags = 0;
  vq->vq_last_avail = 0;
  vq->vq_next_used = 0;
  vq->vq_save_used = 0;
  vq->vq_pfn = 0;
  vq->vq_msix_idx = VIRTIO_MSI_NO_VECTOR;
 }
 vs->vs_negotiated_caps = 0;
 vs->vs_curq = 0;

 if (vs->vs_isr)
  pci_lintr_deassert(vs->vs_pi);
 vs->vs_isr = 0;
 vs->vs_msix_cfg_idx = VIRTIO_MSI_NO_VECTOR;
}
