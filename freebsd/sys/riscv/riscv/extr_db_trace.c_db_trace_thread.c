
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct unwind_state {void* pc; void* fp; void* sp; } ;
struct thread {int dummy; } ;
struct pcb {scalar_t__ pcb_ra; scalar_t__* pcb_s; scalar_t__ pcb_sp; } ;


 struct thread* curthread ;
 int db_stack_trace_cmd (struct unwind_state*) ;
 int db_trace_self () ;
 struct pcb* kdb_thr_ctx (struct thread*) ;

int
db_trace_thread(struct thread *thr, int count)
{
 struct unwind_state frame;
 struct pcb *ctx;

 if (thr != curthread) {
  ctx = kdb_thr_ctx(thr);

  frame.sp = (uint64_t)ctx->pcb_sp;
  frame.fp = (uint64_t)ctx->pcb_s[0];
  frame.pc = (uint64_t)ctx->pcb_ra;
  db_stack_trace_cmd(&frame);
 } else
  db_trace_self();
 return (0);
}
