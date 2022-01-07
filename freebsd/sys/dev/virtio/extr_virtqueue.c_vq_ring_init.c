
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vring {TYPE_1__* desc; } ;
struct virtqueue {char* vq_ring_mem; int vq_nentries; int vq_alignment; struct vring vq_ring; } ;
struct TYPE_2__ {int next; } ;


 int VQ_RING_DESC_CHAIN_END ;
 int vring_init (struct vring*,int,char*,int ) ;

__attribute__((used)) static void
vq_ring_init(struct virtqueue *vq)
{
 struct vring *vr;
 char *ring_mem;
 int i, size;

 ring_mem = vq->vq_ring_mem;
 size = vq->vq_nentries;
 vr = &vq->vq_ring;

 vring_init(vr, size, ring_mem, vq->vq_alignment);

 for (i = 0; i < size - 1; i++)
  vr->desc[i].next = i + 1;
 vr->desc[i].next = VQ_RING_DESC_CHAIN_END;
}
