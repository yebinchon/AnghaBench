
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msgring_thread {struct thread* thread; } ;


 int PRI_ITHD ;
 int RFSTOPPED ;
 int SRQ_INTR ;
 int kproc_kthread_add (int ,void*,int *,struct thread**,int ,int,char*,char*,int) ;
 int msgring_proc ;
 int msgring_process ;
 struct msgring_thread* msgring_threads ;
 int panic (char*,int) ;
 int sched_add (struct thread*,int ) ;
 int sched_class (struct thread*,int ) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static void
create_msgring_thread(int hwtid)
{
 struct msgring_thread *mthd;
 struct thread *td;
 int error;

 mthd = &msgring_threads[hwtid];
 error = kproc_kthread_add(msgring_process, (void *)(uintptr_t)hwtid,
     &msgring_proc, &td, RFSTOPPED, 2, "msgrngproc",
     "msgthr%d", hwtid);
 if (error)
  panic("kproc_kthread_add() failed with %d", error);
 mthd->thread = td;

 thread_lock(td);
 sched_class(td, PRI_ITHD);
 sched_add(td, SRQ_INTR);
 thread_unlock(td);
}
