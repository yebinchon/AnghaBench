
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {scalar_t__ p_pid; int p_threads; struct proc* p_pptr; } ;
typedef struct thread NFSPROC_T ;


 struct thread* TAILQ_FIRST (int *) ;

NFSPROC_T *
nfscl_getparent(struct thread *td)
{
 struct proc *p;
 struct thread *ptd;

 if (td == ((void*)0))
  return (((void*)0));
 p = td->td_proc;
 if (p->p_pid == 0)
  return (((void*)0));
 p = p->p_pptr;
 if (p == ((void*)0))
  return (((void*)0));
 ptd = TAILQ_FIRST(&p->p_threads);
 return (ptd);
}
