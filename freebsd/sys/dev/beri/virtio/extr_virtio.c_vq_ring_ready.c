
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int vq_flags; } ;


 int VQ_ALLOC ;

int
vq_ring_ready(struct vqueue_info *vq)
{

 return (vq->vq_flags & VQ_ALLOC);
}
