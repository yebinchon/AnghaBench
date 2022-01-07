
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct vring_desc {int len; size_t next; int flags; int addr; } ;
struct vq_desc_extra {int ndescs; int indirect; int indirect_paddr; int * cookie; } ;
struct TYPE_2__ {struct vring_desc* desc; } ;
struct virtqueue {int vq_max_indirect_size; size_t vq_desc_head_idx; scalar_t__ vq_free_cnt; struct vq_desc_extra* vq_descx; TYPE_1__ vq_ring; } ;
struct sglist {int dummy; } ;


 int VQASSERT (struct virtqueue*,int,char*,...) ;
 int VQ_RING_ASSERT_CHAIN_TERM (struct virtqueue*) ;
 int VQ_RING_ASSERT_VALID_IDX (struct virtqueue*,size_t) ;
 int VRING_DESC_F_INDIRECT ;
 int vq_ring_enqueue_segments (struct virtqueue*,int ,int ,struct sglist*,int,int) ;
 int vq_ring_update_avail (struct virtqueue*,size_t) ;

__attribute__((used)) static void
vq_ring_enqueue_indirect(struct virtqueue *vq, void *cookie,
    struct sglist *sg, int readable, int writable)
{
 struct vring_desc *dp;
 struct vq_desc_extra *dxp;
 int needed;
 uint16_t head_idx;

 needed = readable + writable;
 VQASSERT(vq, needed <= vq->vq_max_indirect_size,
     "enqueuing too many indirect descriptors");

 head_idx = vq->vq_desc_head_idx;
 VQ_RING_ASSERT_VALID_IDX(vq, head_idx);
 dp = &vq->vq_ring.desc[head_idx];
 dxp = &vq->vq_descx[head_idx];

 VQASSERT(vq, dxp->cookie == ((void*)0),
     "cookie already exists for index %d", head_idx);
 dxp->cookie = cookie;
 dxp->ndescs = 1;

 dp->addr = dxp->indirect_paddr;
 dp->len = needed * sizeof(struct vring_desc);
 dp->flags = VRING_DESC_F_INDIRECT;

 vq_ring_enqueue_segments(vq, dxp->indirect, 0,
     sg, readable, writable);

 vq->vq_desc_head_idx = dp->next;
 vq->vq_free_cnt--;
 if (vq->vq_free_cnt == 0)
  VQ_RING_ASSERT_CHAIN_TERM(vq);
 else
  VQ_RING_ASSERT_VALID_IDX(vq, vq->vq_desc_head_idx);

 vq_ring_update_avail(vq, head_idx);
}
