
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct virtqueue {int vq_queue_index; } ;



uint16_t
virtqueue_index(struct virtqueue *vq)
{
 return (vq->vq_queue_index);
}
