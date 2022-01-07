
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_frame; } ;


 int PMC_UR ;
 int curcpu ;
 int pmc_capture_user_callchain (int ,int ,int ) ;
 int sched_pin () ;
 int sched_unpin () ;

__attribute__((used)) static void
pmc_process_thread_userret(struct thread *td)
{
 sched_pin();
 pmc_capture_user_callchain(curcpu, PMC_UR, td->td_frame);
 sched_unpin();
}
