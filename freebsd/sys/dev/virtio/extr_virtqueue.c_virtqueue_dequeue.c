
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct vring_used_elem {int len; scalar_t__ id; } ;
struct TYPE_5__ {TYPE_1__* used; } ;
struct virtqueue {scalar_t__ vq_used_cons_idx; int vq_nentries; TYPE_3__* vq_descx; TYPE_2__ vq_ring; } ;
struct TYPE_6__ {int * cookie; } ;
struct TYPE_4__ {scalar_t__ idx; struct vring_used_elem* ring; } ;


 int VQASSERT (struct virtqueue*,int ,char*,size_t) ;
 int rmb () ;
 int vq_ring_free_chain (struct virtqueue*,size_t) ;

void *
virtqueue_dequeue(struct virtqueue *vq, uint32_t *len)
{
 struct vring_used_elem *uep;
 void *cookie;
 uint16_t used_idx, desc_idx;

 if (vq->vq_used_cons_idx == vq->vq_ring.used->idx)
  return (((void*)0));

 used_idx = vq->vq_used_cons_idx++ & (vq->vq_nentries - 1);
 uep = &vq->vq_ring.used->ring[used_idx];

 rmb();
 desc_idx = (uint16_t) uep->id;
 if (len != ((void*)0))
  *len = uep->len;

 vq_ring_free_chain(vq, desc_idx);

 cookie = vq->vq_descx[desc_idx].cookie;
 VQASSERT(vq, cookie != ((void*)0), "no cookie for index %d", desc_idx);
 vq->vq_descx[desc_idx].cookie = ((void*)0);

 return (cookie);
}
