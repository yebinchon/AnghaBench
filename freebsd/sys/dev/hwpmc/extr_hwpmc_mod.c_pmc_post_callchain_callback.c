
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pflags; } ;


 int TDP_CALLCHAIN ;
 struct thread* curthread ;
 int sched_pin () ;

__attribute__((used)) static void
pmc_post_callchain_callback(void)
{
 struct thread *td;

 td = curthread;




 if (td->td_pflags & TDP_CALLCHAIN)
  return;






 td->td_pflags |= TDP_CALLCHAIN;





 sched_pin();

 return;
}
