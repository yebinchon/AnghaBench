
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {int used; } ;
struct virtqueue {TYPE_1__ vq_ring; } ;


 int vtophys (int ) ;

vm_paddr_t
virtqueue_used_paddr(struct virtqueue *vq)
{

 return (vtophys(vq->vq_ring.used));
}
