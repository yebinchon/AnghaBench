
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_kstack; } ;


 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int cpu_thread_alloc (struct thread*) ;
 int thread_reap () ;
 int thread_zone ;
 scalar_t__ uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct thread*) ;
 int vm_thread_new (struct thread*,int) ;

struct thread *
thread_alloc(int pages)
{
 struct thread *td;

 thread_reap();

 td = (struct thread *)uma_zalloc(thread_zone, M_WAITOK);
 KASSERT(td->td_kstack == 0, ("thread_alloc got thread with kstack"));
 if (!vm_thread_new(td, pages)) {
  uma_zfree(thread_zone, td);
  return (((void*)0));
 }
 cpu_thread_alloc(td);
 return (td);
}
