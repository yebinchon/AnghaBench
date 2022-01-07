
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pflags; int * td_ar; } ;


 int KASSERT (int,char*) ;
 int TDP_AUDITREC ;

void
audit_thread_free(struct thread *td)
{

 KASSERT(td->td_ar == ((void*)0), ("audit_thread_free: td_ar != NULL"));
 KASSERT((td->td_pflags & TDP_AUDITREC) == 0,
     ("audit_thread_free: TDP_AUDITREC set"));
}
