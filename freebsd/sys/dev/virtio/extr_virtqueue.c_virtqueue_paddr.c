
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct virtqueue {int vq_ring_mem; } ;


 int vtophys (int ) ;

vm_paddr_t
virtqueue_paddr(struct virtqueue *vq)
{

 return (vtophys(vq->vq_ring_mem));
}
