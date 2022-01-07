
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct vqueue_info {int vq_save_used; TYPE_2__* vq_avail; TYPE_1__* vq_used; struct virtio_softc* vq_vs; } ;
struct virtio_softc {int vs_negotiated_caps; } ;
struct TYPE_4__ {int va_flags; } ;
struct TYPE_3__ {int vu_idx; } ;


 int VIRTIO_F_NOTIFY_ON_EMPTY ;
 int VIRTIO_RING_F_EVENT_IDX ;
 int VQ_USED_EVENT_IDX (struct vqueue_info*) ;
 int VRING_AVAIL_F_NO_INTERRUPT ;
 int atomic_thread_fence_seq_cst () ;
 int vq_interrupt (struct virtio_softc*,struct vqueue_info*) ;

void
vq_endchains(struct vqueue_info *vq, int used_all_avail)
{
 struct virtio_softc *vs;
 uint16_t event_idx, new_idx, old_idx;
 int intr;
 vs = vq->vq_vs;
 old_idx = vq->vq_save_used;
 vq->vq_save_used = new_idx = vq->vq_used->vu_idx;






 atomic_thread_fence_seq_cst();
 if (used_all_avail &&
     (vs->vs_negotiated_caps & VIRTIO_F_NOTIFY_ON_EMPTY))
  intr = 1;
 else if (vs->vs_negotiated_caps & VIRTIO_RING_F_EVENT_IDX) {
  event_idx = VQ_USED_EVENT_IDX(vq);




  intr = (uint16_t)(new_idx - event_idx - 1) <
   (uint16_t)(new_idx - old_idx);
 } else {
  intr = new_idx != old_idx &&
      !(vq->vq_avail->va_flags & VRING_AVAIL_F_NO_INTERRUPT);
 }
 if (intr)
  vq_interrupt(vs, vq);
}
