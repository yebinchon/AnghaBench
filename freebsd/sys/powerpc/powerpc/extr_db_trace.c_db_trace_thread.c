
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pcb {scalar_t__ pcb_sp; } ;
typedef int db_addr_t ;


 int db_backtrace (struct thread*,int ,int) ;
 struct pcb* kdb_thr_ctx (struct thread*) ;

int
db_trace_thread(struct thread *td, int count)
{
 struct pcb *ctx;

 ctx = kdb_thr_ctx(td);
 return (db_backtrace(td, (db_addr_t)ctx->pcb_sp, count));
}
