
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vqueue_info {TYPE_1__* vq_used; } ;
struct TYPE_2__ {int vu_flags; } ;


 int VRING_USED_F_NO_NOTIFY ;
 int atomic_thread_fence_seq_cst () ;

__attribute__((used)) static inline void
vq_kick_enable(struct vqueue_info *vq)
{

 vq->vq_used->vu_flags &= ~VRING_USED_F_NO_NOTIFY;





 atomic_thread_fence_seq_cst();
}
