
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int vq_ring_enable_interrupt (struct virtqueue*,int ) ;

int
virtqueue_enable_intr(struct virtqueue *vq)
{

 return (vq_ring_enable_interrupt(vq, 0));
}
