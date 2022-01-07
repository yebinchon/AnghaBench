
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {int dummy; } ;
struct pcb {int pcb_esp; int pcb_eip; scalar_t__ pcb_ebp; } ;
struct i386_frame {int dummy; } ;


 int db_backtrace (struct thread*,struct trapframe*,struct i386_frame*,int ,int ,int) ;
 struct trapframe* kdb_frame ;
 struct pcb* kdb_thr_ctx (struct thread*) ;
 struct thread* kdb_thread ;

int
db_trace_thread(struct thread *thr, int count)
{
 struct pcb *ctx;
 struct trapframe *tf;

 ctx = kdb_thr_ctx(thr);
 tf = thr == kdb_thread ? kdb_frame : ((void*)0);
 return (db_backtrace(thr, tf, (struct i386_frame *)ctx->pcb_ebp,
     ctx->pcb_eip, ctx->pcb_esp, count));
}
