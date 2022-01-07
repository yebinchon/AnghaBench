
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rmlock {int dummy; } ;
struct rm_queue {struct rm_queue* rmq_next; } ;
struct rm_priotracker {struct thread* rmp_thread; struct rmlock* rmp_rmlock; } ;
struct pcpu {struct rm_queue pc_rm_queue; } ;
struct lock_object {int dummy; } ;


 int KASSERT (int ,char*) ;
 int RA_LOCKED ;
 int RA_NOTRECURSED ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 struct pcpu* get_pcpu () ;
 int rm_assert (struct rmlock*,int) ;
 int rm_runlock (struct rmlock*,struct rm_priotracker*) ;
 scalar_t__ rm_wowned (struct rmlock*) ;
 int rm_wunlock (struct rmlock*) ;

__attribute__((used)) static uintptr_t
unlock_rm(struct lock_object *lock)
{
 struct thread *td;
 struct pcpu *pc;
 struct rmlock *rm;
 struct rm_queue *queue;
 struct rm_priotracker *tracker;
 uintptr_t how;

 rm = (struct rmlock *)lock;
 tracker = ((void*)0);
 how = 0;
 rm_assert(rm, RA_LOCKED | RA_NOTRECURSED);
 if (rm_wowned(rm))
  rm_wunlock(rm);
 else {





  critical_enter();
  td = curthread;
  pc = get_pcpu();
  for (queue = pc->pc_rm_queue.rmq_next;
      queue != &pc->pc_rm_queue; queue = queue->rmq_next) {
   tracker = (struct rm_priotracker *)queue;
    if ((tracker->rmp_rmlock == rm) &&
        (tracker->rmp_thread == td)) {
     how = (uintptr_t)tracker;
     break;
    }
  }
  KASSERT(tracker != ((void*)0),
      ("rm_priotracker is non-NULL when lock held in read mode"));
  critical_exit();
  rm_runlock(rm, tracker);
 }
 return (how);
}
