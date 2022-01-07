
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {TYPE_1__* used; } ;
struct virtqueue {scalar_t__ vq_used_cons_idx; scalar_t__ vq_nentries; TYPE_2__ vq_ring; } ;
struct TYPE_3__ {scalar_t__ idx; } ;


 int VQASSERT (struct virtqueue*,int,char*) ;

int
virtqueue_nused(struct virtqueue *vq)
{
 uint16_t used_idx, nused;

 used_idx = vq->vq_ring.used->idx;

 nused = (uint16_t)(used_idx - vq->vq_used_cons_idx);
 VQASSERT(vq, nused <= vq->vq_nentries, "used more than available");

 return (nused);
}
