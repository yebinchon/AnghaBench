
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int vq_queue_index; int vq_dev; } ;


 int VIRTIO_BUS_NOTIFY_VQ (int ,int ) ;

__attribute__((used)) static void
vq_ring_notify_host(struct virtqueue *vq)
{

 VIRTIO_BUS_NOTIFY_VQ(vq->vq_dev, vq->vq_queue_index);
}
