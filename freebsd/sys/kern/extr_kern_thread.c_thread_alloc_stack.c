
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_kstack; } ;


 int KASSERT (int,char*) ;
 int cpu_thread_alloc (struct thread*) ;
 int vm_thread_new (struct thread*,int) ;

int
thread_alloc_stack(struct thread *td, int pages)
{

 KASSERT(td->td_kstack == 0,
     ("thread_alloc_stack called on a thread with kstack"));
 if (!vm_thread_new(td, pages))
  return (0);
 cpu_thread_alloc(td);
 return (1);
}
