
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vqueue_info {int vq_next_used; TYPE_1__* vq_used; } ;
struct TYPE_2__ {int vu_idx; } ;


 int atomic_thread_fence_rel () ;

void
vq_relchain_publish(struct vqueue_info *vq)
{





 atomic_thread_fence_rel();
 vq->vq_used->vu_idx = vq->vq_next_used;
}
