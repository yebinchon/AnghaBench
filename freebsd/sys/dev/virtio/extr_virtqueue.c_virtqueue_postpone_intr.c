
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vq_postpone_t ;
typedef int uint16_t ;
struct TYPE_4__ {TYPE_1__* avail; } ;
struct virtqueue {int vq_used_cons_idx; TYPE_2__ vq_ring; } ;
struct TYPE_3__ {int idx; } ;





 int vq_ring_enable_interrupt (struct virtqueue*,int) ;

int
virtqueue_postpone_intr(struct virtqueue *vq, vq_postpone_t hint)
{
 uint16_t ndesc, avail_idx;

 avail_idx = vq->vq_ring.avail->idx;
 ndesc = (uint16_t)(avail_idx - vq->vq_used_cons_idx);

 switch (hint) {
 case 128:
  ndesc = ndesc / 4;
  break;
 case 129:
  ndesc = (ndesc * 3) / 4;
  break;
 case 130:
  break;
 }

 return (vq_ring_enable_interrupt(vq, ndesc));
}
