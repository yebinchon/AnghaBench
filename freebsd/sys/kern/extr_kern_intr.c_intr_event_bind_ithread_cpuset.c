
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intr_event {int ie_lock; TYPE_2__* ie_thread; } ;
typedef int lwpid_t ;
typedef int cpuset_t ;
struct TYPE_4__ {TYPE_1__* it_thread; } ;
struct TYPE_3__ {int td_tid; } ;


 int ENODEV ;
 int cpuset_setthread (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
intr_event_bind_ithread_cpuset(struct intr_event *ie, cpuset_t *cs)
{
 lwpid_t id;

 mtx_lock(&ie->ie_lock);
 if (ie->ie_thread != ((void*)0)) {
  id = ie->ie_thread->it_thread->td_tid;
  mtx_unlock(&ie->ie_lock);
  return (cpuset_setthread(id, cs));
 } else {
  mtx_unlock(&ie->ie_lock);
 }
 return (ENODEV);
}
