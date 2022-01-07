
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int PROC_ACTION (int ) ;
 int ptrace_single_step (struct thread*) ;

int
proc_sstep(struct thread *td)
{

 PROC_ACTION(ptrace_single_step(td));
}
