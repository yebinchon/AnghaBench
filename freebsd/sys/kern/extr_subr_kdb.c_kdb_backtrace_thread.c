
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_tid; } ;
struct stack {int dummy; } ;
struct TYPE_2__ {int (* dbbe_trace_thread ) (struct thread*) ;} ;


 TYPE_1__* kdb_dbbe ;
 int printf (char*,int) ;
 int stack_print_ddb (struct stack*) ;
 int stack_save_td (struct stack*,struct thread*) ;
 int stack_zero (struct stack*) ;
 int stub1 (struct thread*) ;

void
kdb_backtrace_thread(struct thread *td)
{

 if (kdb_dbbe != ((void*)0) && kdb_dbbe->dbbe_trace_thread != ((void*)0)) {
  printf("KDB: stack backtrace of thread %d:\n", td->td_tid);
  kdb_dbbe->dbbe_trace_thread(td);
 }
}
