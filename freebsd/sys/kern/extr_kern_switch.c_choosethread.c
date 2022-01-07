
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int TD_SET_RUNNING (struct thread*) ;
 scalar_t__ __predict_false (int ) ;
 struct thread* choosethread_panic (struct thread*) ;
 int * panicstr ;
 struct thread* sched_choose () ;

struct thread *
choosethread(void)
{
 struct thread *td;

 td = sched_choose();

 if (__predict_false(panicstr != ((void*)0)))
  return (choosethread_panic(td));

 TD_SET_RUNNING(td);
 return (td);
}
