
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_3__ {TYPE_2__* avail; } ;
struct virtqueue {int vq_nentries; int vq_queued_cnt; TYPE_1__ vq_ring; } ;
struct TYPE_4__ {int idx; size_t* ring; } ;


 int wmb () ;

__attribute__((used)) static void
vq_ring_update_avail(struct virtqueue *vq, uint16_t desc_idx)
{
 uint16_t avail_idx;
 avail_idx = vq->vq_ring.avail->idx & (vq->vq_nentries - 1);
 vq->vq_ring.avail->ring[avail_idx] = desc_idx;

 wmb();
 vq->vq_ring.avail->idx++;


 vq->vq_queued_cnt++;
}
