
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_ss; int tf_esp; int tf_eflags; int tf_cs; int tf_eip; int tf_eax; int tf_ecx; int tf_edx; int tf_ebx; int tf_ebp; int tf_esi; int tf_edi; int tf_ds; int tf_es; int tf_fs; } ;
struct reg {scalar_t__ r_trapno; scalar_t__ r_err; int r_ss; int r_esp; int r_eflags; int r_cs; int r_eip; int r_eax; int r_ecx; int r_edx; int r_ebx; int r_ebp; int r_esi; int r_edi; int r_ds; int r_es; int r_fs; } ;



int
fill_frame_regs(struct trapframe *tp, struct reg *regs)
{

 regs->r_fs = tp->tf_fs;
 regs->r_es = tp->tf_es;
 regs->r_ds = tp->tf_ds;
 regs->r_edi = tp->tf_edi;
 regs->r_esi = tp->tf_esi;
 regs->r_ebp = tp->tf_ebp;
 regs->r_ebx = tp->tf_ebx;
 regs->r_edx = tp->tf_edx;
 regs->r_ecx = tp->tf_ecx;
 regs->r_eax = tp->tf_eax;
 regs->r_eip = tp->tf_eip;
 regs->r_cs = tp->tf_cs;
 regs->r_eflags = tp->tf_eflags;
 regs->r_esp = tp->tf_esp;
 regs->r_ss = tp->tf_ss;
 regs->r_err = 0;
 regs->r_trapno = 0;
 return (0);
}
