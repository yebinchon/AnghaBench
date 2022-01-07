
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_sleepqueue; int td_turnstile; int td_rlqe; } ;


 int EVENTHANDLER_DIRECT_INVOKE (void (*) (void*,int),struct thread*) ;
 int rlqentry_free (int ) ;
 int seltdfini (struct thread*) ;
 int sleepq_free (int ) ;
 int turnstile_free (int ) ;
 int umtx_thread_fini (struct thread*) ;

__attribute__((used)) static void
thread_fini(void *mem, int size)
{
 struct thread *td;

 td = (struct thread *)mem;
 EVENTHANDLER_DIRECT_INVOKE(thread_fini, td);
 rlqentry_free(td->td_rlqe);
 turnstile_free(td->td_turnstile);
 sleepq_free(td->td_sleepqueue);
 umtx_thread_fini(td);
 seltdfini(td);
}
