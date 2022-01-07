
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_state; int td_tid; int * td_su; } ;


 int EVENTHANDLER_DIRECT_INVOKE (void (*) (void*,int,void*),struct thread*) ;
 int MPASS (int ) ;





 int audit_thread_free (struct thread*) ;
 int osd_thread_exit (struct thread*) ;
 int panic (char*) ;
 int td_softdep_cleanup (struct thread*) ;
 int tid_free (int ) ;

__attribute__((used)) static void
thread_dtor(void *mem, int size, void *arg)
{
 struct thread *td;

 td = (struct thread *)mem;
 osd_thread_exit(td);
 td_softdep_cleanup(td);
 MPASS(td->td_su == ((void*)0));

 EVENTHANDLER_DIRECT_INVOKE(thread_dtor, td);
 tid_free(td->td_tid);
}
