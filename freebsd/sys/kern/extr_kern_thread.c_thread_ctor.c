
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_critnest; int td_lend_user_pri; int td_tid; int td_oncpu; int td_lastcpu; int td_state; } ;


 int EVENTHANDLER_DIRECT_INVOKE (int (*) (void*,int,void*,int),struct thread*) ;
 int NOCPU ;
 int PRI_MAX ;
 int TDS_INACTIVE ;
 int audit_thread_alloc (struct thread*) ;
 int tid_alloc () ;
 int umtx_thread_alloc (struct thread*) ;

__attribute__((used)) static int
thread_ctor(void *mem, int size, void *arg, int flags)
{
 struct thread *td;

 td = (struct thread *)mem;
 td->td_state = TDS_INACTIVE;
 td->td_lastcpu = td->td_oncpu = NOCPU;

 td->td_tid = tid_alloc();






 td->td_critnest = 1;
 td->td_lend_user_pri = PRI_MAX;
 EVENTHANDLER_DIRECT_INVOKE(thread_ctor, td);



 umtx_thread_alloc(td);
 return (0);
}
