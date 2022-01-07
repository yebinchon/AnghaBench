
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tdq {int tdq_lowpri; } ;
struct TYPE_3__ {int td_priority; int td_lock; } ;


 int TDQ_LOCK (struct tdq*) ;
 int TDQ_LOCKPTR (struct tdq*) ;
 struct tdq* TDQ_SELF () ;
 int TDQ_UNLOCK (struct tdq*) ;
 int sched_setup_smp () ;
 int tdq_load_add (struct tdq*,TYPE_1__*) ;
 int tdq_setup (struct tdq*,int ) ;
 TYPE_1__ thread0 ;

__attribute__((used)) static void
sched_setup(void *dummy)
{
 struct tdq *tdq;




 tdq_setup(TDQ_SELF(), 0);

 tdq = TDQ_SELF();


 TDQ_LOCK(tdq);
 thread0.td_lock = TDQ_LOCKPTR(TDQ_SELF());
 tdq_load_add(tdq, &thread0);
 tdq->tdq_lowpri = thread0.td_priority;
 TDQ_UNLOCK(tdq);
}
