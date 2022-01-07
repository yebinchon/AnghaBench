
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct trapframe {int dummy; } ;
struct TYPE_4__ {scalar_t__ md_tls_tcb_offset; scalar_t__ md_ss_addr; int md_flags; } ;
struct thread {TYPE_2__ td_md; TYPE_1__* td_frame; int td_proc; } ;
struct image_params {int entry_addr; scalar_t__ ps_strings; } ;
typedef int register_t ;
typedef int caddr_t ;
struct TYPE_3__ {int sp; int pc; int t9; int sr; int a0; int a3; scalar_t__ a2; scalar_t__ a1; } ;


 int MDTD_FPUSED ;
 int MIPS_SR_EXL ;
 int MIPS_SR_INT_IE ;
 int MIPS_SR_INT_MASK ;
 int MIPS_SR_KSU_USER ;
 int MIPS_SR_KX ;
 int MIPS_SR_PX ;
 int MIPS_SR_UX ;
 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (int ,struct thread*) ;
 int STACK_ALIGN ;
 int SV_LP64 ;
 int SV_PROC_FLAG (int ,int ) ;
 scalar_t__ TLS_TCB_SIZE ;
 scalar_t__ TLS_TP_OFFSET ;
 int bzero (int ,int) ;
 int fpcurthread ;
 int mips_rd_status () ;

void
exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{

 bzero((caddr_t)td->td_frame, sizeof(struct trapframe));

 td->td_frame->sp = ((register_t)stack) & ~(STACK_ALIGN - 1);
 td->td_frame->pc = imgp->entry_addr & ~3;
 td->td_frame->t9 = imgp->entry_addr & ~3;
 td->td_frame->sr = MIPS_SR_KSU_USER | MIPS_SR_EXL | MIPS_SR_INT_IE |
     (mips_rd_status() & MIPS_SR_INT_MASK);
 td->td_frame->a0 = (register_t) stack;
 td->td_frame->a1 = 0;
 td->td_frame->a2 = 0;
 td->td_frame->a3 = (register_t)imgp->ps_strings;

 td->td_md.md_flags &= ~MDTD_FPUSED;
 if (PCPU_GET(fpcurthread) == td)
     PCPU_SET(fpcurthread, (struct thread *)0);
 td->td_md.md_ss_addr = 0;

 td->td_md.md_tls_tcb_offset = TLS_TP_OFFSET + TLS_TCB_SIZE;
}
