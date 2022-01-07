
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_3__ {int md_flags; int md_spinlock_count; scalar_t__ md_cop2owner; void* md_ucop2; void* md_cop2; int md_saved_intr; int md_tls_tcb_offset; int md_tls; } ;
struct thread {TYPE_2__* td_frame; TYPE_1__ td_md; struct pcb* td_pcb; } ;
struct proc {int dummy; } ;
struct pcb {int* pcb_context; } ;
typedef void* register_t ;
typedef int __int64_t ;
struct TYPE_4__ {int v1; int sr; scalar_t__ a3; scalar_t__ v0; } ;


 int CALLFRAME_SIZ ;
 scalar_t__ COP2_OWNER_USERLAND ;
 int MDTD_COP2USED ;
 int MDTD_FPUSED ;
 int MIPS_SR_COP_2_BIT ;
 int MIPS_SR_INT_IE ;
 int MIPS_SR_INT_MASK ;
 int MIPS_SR_KX ;
 int MIPS_SR_PX ;
 int MIPS_SR_SX ;
 int MIPS_SR_UX ;
 int MipsSaveCurFPState (struct thread*) ;
 size_t PCB_REG_RA ;
 size_t PCB_REG_S0 ;
 size_t PCB_REG_S1 ;
 size_t PCB_REG_S2 ;
 size_t PCB_REG_SP ;
 size_t PCB_REG_SR ;
 struct thread* PCPU_GET (int ) ;
 int RFPROC ;
 int bcopy (struct pcb*,struct pcb*,int) ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;
 int fpcurthread ;
 int memcpy (void*,void*,int) ;
 int mips_rd_status () ;
 void* octeon_cop2_alloc_ctx () ;
 int octeon_cop2_save (void*) ;
 int panic (char*) ;

void
cpu_fork(struct thread *td1, struct proc *p2, struct thread *td2, int flags)
{
 struct pcb *pcb2;

 if ((flags & RFPROC) == 0)
  return;





 pcb2 = td2->td_pcb;







 bcopy(td1->td_pcb, pcb2, sizeof(*pcb2));




 td2->td_md.md_flags = td1->td_md.md_flags & MDTD_FPUSED;




 td2->td_frame->v0 = 0;
 td2->td_frame->v1 = 1;
 td2->td_frame->a3 = 0;

 if (td1 == PCPU_GET(fpcurthread))
  MipsSaveCurFPState(td1);

 pcb2->pcb_context[PCB_REG_RA] = (register_t)(intptr_t)fork_trampoline;

 pcb2->pcb_context[PCB_REG_SP] = (register_t)(((vm_offset_t)td2->td_pcb &
     ~(sizeof(__int64_t) - 1)) - CALLFRAME_SIZ);
 pcb2->pcb_context[PCB_REG_S0] = (register_t)(intptr_t)fork_return;
 pcb2->pcb_context[PCB_REG_S1] = (register_t)(intptr_t)td2;
 pcb2->pcb_context[PCB_REG_S2] = (register_t)(intptr_t)td2->td_frame;
 pcb2->pcb_context[PCB_REG_SR] = mips_rd_status() &
     (MIPS_SR_KX | MIPS_SR_UX | MIPS_SR_INT_MASK);







 td2->td_md.md_tls = td1->td_md.md_tls;
 td2->td_md.md_tls_tcb_offset = td1->td_md.md_tls_tcb_offset;
 td2->td_md.md_saved_intr = MIPS_SR_INT_IE;
 td2->td_md.md_spinlock_count = 1;
}
