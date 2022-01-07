
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {scalar_t__ p_numthreads; } ;


 int ENOMEM ;
 int EPROCLIM ;
 int max_threads_hits ;
 scalar_t__ max_threads_per_proc ;
 struct thread* thread_alloc (int) ;

int
kern_thr_alloc(struct proc *p, int pages, struct thread **ntd)
{


 if (p->p_numthreads >= max_threads_per_proc) {
  ++max_threads_hits;
  return (EPROCLIM);
 }

 *ntd = thread_alloc(pages);
 if (*ntd == ((void*)0))
  return (ENOMEM);

 return (0);
}
