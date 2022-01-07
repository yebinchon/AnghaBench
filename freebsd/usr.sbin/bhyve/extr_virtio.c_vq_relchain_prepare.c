
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uint16_t ;
struct vring_used {struct virtio_used* vu_ring; } ;
struct vqueue_info {size_t vq_qsize; int vq_next_used; struct vring_used* vq_used; } ;
struct virtio_used {size_t vu_idx; int vu_tlen; } ;



void
vq_relchain_prepare(struct vqueue_info *vq, uint16_t idx, uint32_t iolen)
{
 volatile struct vring_used *vuh;
 volatile struct virtio_used *vue;
 uint16_t mask;
 mask = vq->vq_qsize - 1;
 vuh = vq->vq_used;

 vue = &vuh->vu_ring[vq->vq_next_used++ & mask];
 vue->vu_idx = idx;
 vue->vu_tlen = iolen;
}
