
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_3__* td_cpuset; } ;
struct proc {int dummy; } ;
struct intr_event {int ie_lock; TYPE_2__* ie_thread; int ie_cpu; } ;
typedef int lwpid_t ;
typedef int cpuset_t ;
struct TYPE_6__ {int cs_mask; } ;
struct TYPE_5__ {TYPE_1__* it_thread; } ;
struct TYPE_4__ {int td_tid; } ;


 int CPU_COPY (int *,int *) ;
 int CPU_SET (int ,int *) ;



 int CPU_WHICH_TID ;
 int CPU_ZERO (int *) ;
 int EINVAL ;
 int ESRCH ;
 int NOCPU ;
 int PROC_UNLOCK (struct proc*) ;
 int * cpuset_root ;
 int cpuset_which (int ,int ,struct proc**,struct thread**,int *) ;
 struct intr_event* intr_lookup (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
intr_getaffinity(int irq, int mode, void *m)
{
 struct intr_event *ie;
 struct thread *td;
 struct proc *p;
 cpuset_t *mask;
 lwpid_t id;
 int error;

 mask = m;
 ie = intr_lookup(irq);
 if (ie == ((void*)0))
  return (ESRCH);

 error = 0;
 CPU_ZERO(mask);
 switch (mode) {
 case 129:
 case 130:
  mtx_lock(&ie->ie_lock);
  if (ie->ie_cpu == NOCPU)
   CPU_COPY(cpuset_root, mask);
  else
   CPU_SET(ie->ie_cpu, mask);
  mtx_unlock(&ie->ie_lock);
  break;
 case 128:
  mtx_lock(&ie->ie_lock);
  if (ie->ie_thread == ((void*)0)) {
   mtx_unlock(&ie->ie_lock);
   CPU_COPY(cpuset_root, mask);
  } else {
   id = ie->ie_thread->it_thread->td_tid;
   mtx_unlock(&ie->ie_lock);
   error = cpuset_which(CPU_WHICH_TID, id, &p, &td, ((void*)0));
   if (error != 0)
    return (error);
   CPU_COPY(&td->td_cpuset->cs_mask, mask);
   PROC_UNLOCK(p);
  }
 default:
  return (EINVAL);
 }
 return (0);
}
