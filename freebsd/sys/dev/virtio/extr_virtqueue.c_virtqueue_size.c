
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int vq_nentries; } ;



int
virtqueue_size(struct virtqueue *vq)
{

 return (vq->vq_nentries);
}
