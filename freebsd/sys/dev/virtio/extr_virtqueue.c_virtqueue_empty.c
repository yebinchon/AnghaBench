
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {scalar_t__ vq_nentries; scalar_t__ vq_free_cnt; } ;



int
virtqueue_empty(struct virtqueue *vq)
{

 return (vq->vq_nentries == vq->vq_free_cnt);
}
