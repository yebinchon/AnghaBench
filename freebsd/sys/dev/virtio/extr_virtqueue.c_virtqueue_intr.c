
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int vq_intrhand_arg; int (* vq_intrhand ) (int ) ;} ;


 int stub1 (int ) ;

void
virtqueue_intr(struct virtqueue *vq)
{

 vq->vq_intrhand(vq->vq_intrhand_arg);
}
