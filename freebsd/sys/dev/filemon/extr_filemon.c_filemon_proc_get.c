
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int * p_filemon; } ;
struct filemon {int lock; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct filemon* filemon_acquire (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static struct filemon *
filemon_proc_get(struct proc *p)
{
 struct filemon *filemon;

 if (p->p_filemon == ((void*)0))
  return (((void*)0));
 PROC_LOCK(p);
 filemon = filemon_acquire(p->p_filemon);
 PROC_UNLOCK(p);

 if (filemon == ((void*)0))
  return (((void*)0));




 sx_xlock(&filemon->lock);
 return (filemon);
}
