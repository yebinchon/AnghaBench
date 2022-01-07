
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int rm_activeReaders; } ;
struct rm_queue {struct rm_queue* rmq_next; } ;
struct rm_priotracker {scalar_t__ rmp_flags; struct rmlock* rmp_rmlock; } ;
struct pcpu {struct rm_queue pc_rm_queue; } ;


 int LIST_INSERT_HEAD (int *,struct rm_priotracker*,int ) ;
 scalar_t__ RMPF_ONQUEUE ;
 struct pcpu* get_pcpu () ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rm_spinlock ;
 int rmp_qentry ;

__attribute__((used)) static void
rm_cleanIPI(void *arg)
{
 struct pcpu *pc;
 struct rmlock *rm = arg;
 struct rm_priotracker *tracker;
 struct rm_queue *queue;
 pc = get_pcpu();

 for (queue = pc->pc_rm_queue.rmq_next; queue != &pc->pc_rm_queue;
     queue = queue->rmq_next) {
  tracker = (struct rm_priotracker *)queue;
  if (tracker->rmp_rmlock == rm && tracker->rmp_flags == 0) {
   tracker->rmp_flags = RMPF_ONQUEUE;
   mtx_lock_spin(&rm_spinlock);
   LIST_INSERT_HEAD(&rm->rm_activeReaders, tracker,
       rmp_qentry);
   mtx_unlock_spin(&rm_spinlock);
  }
 }
}
