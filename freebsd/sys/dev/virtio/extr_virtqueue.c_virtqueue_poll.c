
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct virtqueue {int vq_dev; } ;


 int VIRTIO_BUS_POLL (int ) ;
 int cpu_spinwait () ;
 void* virtqueue_dequeue (struct virtqueue*,int *) ;

void *
virtqueue_poll(struct virtqueue *vq, uint32_t *len)
{
 void *cookie;

 VIRTIO_BUS_POLL(vq->vq_dev);
 while ((cookie = virtqueue_dequeue(vq, len)) == ((void*)0)) {
  cpu_spinwait();
  VIRTIO_BUS_POLL(vq->vq_dev);
 }

 return (cookie);
}
