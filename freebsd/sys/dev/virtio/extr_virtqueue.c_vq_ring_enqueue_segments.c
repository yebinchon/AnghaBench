
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct vring_desc {size_t next; int flags; int len; int addr; } ;
struct virtqueue {int dummy; } ;
struct sglist_seg {int ss_len; int ss_paddr; } ;
struct sglist {struct sglist_seg* sg_segs; } ;


 int VQASSERT (struct virtqueue*,int,char*) ;
 size_t VQ_RING_DESC_CHAIN_END ;
 int VRING_DESC_F_NEXT ;
 int VRING_DESC_F_WRITE ;

__attribute__((used)) static uint16_t
vq_ring_enqueue_segments(struct virtqueue *vq, struct vring_desc *desc,
    uint16_t head_idx, struct sglist *sg, int readable, int writable)
{
 struct sglist_seg *seg;
 struct vring_desc *dp;
 int i, needed;
 uint16_t idx;

 needed = readable + writable;

 for (i = 0, idx = head_idx, seg = sg->sg_segs;
      i < needed;
      i++, idx = dp->next, seg++) {
  VQASSERT(vq, idx != VQ_RING_DESC_CHAIN_END,
      "premature end of free desc chain");

  dp = &desc[idx];
  dp->addr = seg->ss_paddr;
  dp->len = seg->ss_len;
  dp->flags = 0;

  if (i < needed - 1)
   dp->flags |= VRING_DESC_F_NEXT;
  if (i >= readable)
   dp->flags |= VRING_DESC_F_WRITE;
 }

 return (idx);
}
