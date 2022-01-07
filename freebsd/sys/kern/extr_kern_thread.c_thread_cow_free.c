
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_limit; int * td_ucred; } ;


 int crfree (int *) ;
 int lim_free (int *) ;

void
thread_cow_free(struct thread *td)
{

 if (td->td_ucred != ((void*)0))
  crfree(td->td_ucred);
 if (td->td_limit != ((void*)0))
  lim_free(td->td_limit);
}
