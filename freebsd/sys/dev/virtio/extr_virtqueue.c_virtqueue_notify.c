
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {scalar_t__ vq_queued_cnt; } ;


 int mb () ;
 scalar_t__ vq_ring_must_notify_host (struct virtqueue*) ;
 int vq_ring_notify_host (struct virtqueue*) ;

void
virtqueue_notify(struct virtqueue *vq)
{


 mb();

 if (vq_ring_must_notify_host(vq))
  vq_ring_notify_host(vq);
 vq->vq_queued_cnt = 0;
}
