
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pcb {scalar_t__* pcb_context; } ;
typedef scalar_t__ register_t ;


 size_t PCB_REG_PC ;
 size_t PCB_REG_RA ;
 size_t PCB_REG_SP ;
 struct pcb* kdb_thr_ctx (struct thread*) ;
 int stacktrace_subr (scalar_t__,scalar_t__,scalar_t__) ;

int
db_trace_thread(struct thread *thr, int count)
{
 register_t pc, ra, sp;
 struct pcb *ctx;

 ctx = kdb_thr_ctx(thr);
 sp = (register_t)ctx->pcb_context[PCB_REG_SP];
 pc = (register_t)ctx->pcb_context[PCB_REG_PC];
 ra = (register_t)ctx->pcb_context[PCB_REG_RA];
 stacktrace_subr(pc, sp, ra);

 return (0);
}
