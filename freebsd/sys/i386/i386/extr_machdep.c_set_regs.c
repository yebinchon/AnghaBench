
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_ss; int tf_esp; int tf_eflags; int tf_cs; int tf_eip; int tf_eax; int tf_ecx; int tf_edx; int tf_ebx; int tf_ebp; int tf_esi; int tf_edi; int tf_ds; int tf_es; int tf_fs; } ;
struct thread {struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct reg {int r_gs; int r_ss; int r_esp; int r_eflags; int r_cs; int r_eip; int r_eax; int r_ecx; int r_edx; int r_ebx; int r_ebp; int r_esi; int r_edi; int r_ds; int r_es; int r_fs; } ;
struct pcb {int pcb_gs; } ;


 int CS_SECURE (int ) ;
 int EFL_SECURE (int ,int ) ;
 int EINVAL ;

int
set_regs(struct thread *td, struct reg *regs)
{
 struct pcb *pcb;
 struct trapframe *tp;

 tp = td->td_frame;
 if (!EFL_SECURE(regs->r_eflags, tp->tf_eflags) ||
     !CS_SECURE(regs->r_cs))
  return (EINVAL);
 pcb = td->td_pcb;
 tp->tf_fs = regs->r_fs;
 tp->tf_es = regs->r_es;
 tp->tf_ds = regs->r_ds;
 tp->tf_edi = regs->r_edi;
 tp->tf_esi = regs->r_esi;
 tp->tf_ebp = regs->r_ebp;
 tp->tf_ebx = regs->r_ebx;
 tp->tf_edx = regs->r_edx;
 tp->tf_ecx = regs->r_ecx;
 tp->tf_eax = regs->r_eax;
 tp->tf_eip = regs->r_eip;
 tp->tf_cs = regs->r_cs;
 tp->tf_eflags = regs->r_eflags;
 tp->tf_esp = regs->r_esp;
 tp->tf_ss = regs->r_ss;
 pcb->pcb_gs = regs->r_gs;
 return (0);
}
