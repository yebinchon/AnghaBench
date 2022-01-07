
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_sel; scalar_t__ td_kstack; int * td_rlqe; int td_turnstile; int td_sleepqueue; } ;


 int EVENTHANDLER_DIRECT_INVOKE (int (*) (void*,int,int),struct thread*) ;
 int sleepq_alloc () ;
 int turnstile_alloc () ;
 int umtx_thread_init (struct thread*) ;

__attribute__((used)) static int
thread_init(void *mem, int size, int flags)
{
 struct thread *td;

 td = (struct thread *)mem;

 td->td_sleepqueue = sleepq_alloc();
 td->td_turnstile = turnstile_alloc();
 td->td_rlqe = ((void*)0);
 EVENTHANDLER_DIRECT_INVOKE(thread_init, td);
 umtx_thread_init(td);
 td->td_kstack = 0;
 td->td_sel = ((void*)0);
 return (0);
}
