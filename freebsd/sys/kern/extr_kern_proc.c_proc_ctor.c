
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef struct thread proc ;


 int EVENTHANDLER_DIRECT_INVOKE (int ,struct thread*) ;
 struct thread* FIRST_THREAD_IN_PROC (struct thread*) ;
 int process_ctor ;
 int thread_ctor ;

__attribute__((used)) static int
proc_ctor(void *mem, int size, void *arg, int flags)
{
 struct proc *p;
 struct thread *td;

 p = (struct proc *)mem;
 EVENTHANDLER_DIRECT_INVOKE(process_ctor, p);
 td = FIRST_THREAD_IN_PROC(p);
 if (td != ((void*)0)) {

  EVENTHANDLER_DIRECT_INVOKE(thread_ctor, td);
 }
 return (0);
}
