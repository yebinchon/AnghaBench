
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intr_event {int (* ie_assign_cpu ) (int ,int) ;int ie_cpu; int ie_lock; TYPE_2__* ie_thread; int ie_source; } ;
typedef int lwpid_t ;
struct TYPE_4__ {TYPE_1__* it_thread; } ;
struct TYPE_3__ {int td_tid; } ;


 scalar_t__ CPU_ABSENT (int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int NOCPU ;
 int PRIV_SCHED_CPUSET_INTR ;
 int cpuset_setithread (int ,int) ;
 int curthread ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int priv_check (int ,int ) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
_intr_event_bind(struct intr_event *ie, int cpu, bool bindirq, bool bindithread)
{
 lwpid_t id;
 int error;


 if (cpu != NOCPU && CPU_ABSENT(cpu))
  return (EINVAL);

 if (ie->ie_assign_cpu == ((void*)0))
  return (EOPNOTSUPP);

 error = priv_check(curthread, PRIV_SCHED_CPUSET_INTR);
 if (error)
  return (error);





 if (bindithread) {
  mtx_lock(&ie->ie_lock);
  if (ie->ie_thread != ((void*)0)) {
   id = ie->ie_thread->it_thread->td_tid;
   mtx_unlock(&ie->ie_lock);
   error = cpuset_setithread(id, cpu);
   if (error)
    return (error);
  } else
   mtx_unlock(&ie->ie_lock);
 }
 if (bindirq)
  error = ie->ie_assign_cpu(ie->ie_source, cpu);
 if (error) {
  if (bindithread) {
   mtx_lock(&ie->ie_lock);
   if (ie->ie_thread != ((void*)0)) {
    cpu = ie->ie_cpu;
    id = ie->ie_thread->it_thread->td_tid;
    mtx_unlock(&ie->ie_lock);
    (void)cpuset_setithread(id, cpu);
   } else
    mtx_unlock(&ie->ie_lock);
  }
  return (error);
 }

 if (bindirq) {
  mtx_lock(&ie->ie_lock);
  ie->ie_cpu = cpu;
  mtx_unlock(&ie->ie_lock);
 }

 return (error);
}
