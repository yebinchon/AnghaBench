
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int next; } ;
struct virtqueue {int vq_max_indirect_size; int vq_indirect_mem_size; } ;


 int VQ_RING_DESC_CHAIN_END ;
 int bzero (struct vring_desc*,int ) ;

__attribute__((used)) static void
virtqueue_init_indirect_list(struct virtqueue *vq,
    struct vring_desc *indirect)
{
 int i;

 bzero(indirect, vq->vq_indirect_mem_size);

 for (i = 0; i < vq->vq_max_indirect_size - 1; i++)
  indirect[i].next = i + 1;
 indirect[i].next = VQ_RING_DESC_CHAIN_END;
}
