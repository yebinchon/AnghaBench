
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct reg {int pc; int ctr; int xer; int cr; int lr; int * fixreg; int spsr; int elr; int * x; int r_ss; int r_rsp; int r_rflags; int r_cs; int r_rip; int r_rax; int r_rcx; int r_rdx; int r_rbx; int r_rbp; int r_rsi; int r_rdi; int r_ds; int r_es; int r_fs; int r_gs; } ;
struct TYPE_3__ {int pc; int ctr; int xer; int cr; int lr; int * fixreg; int r_cpsr; int r_pc; int r_lr; int r_sp; int * r; int r_ss; int r_esp; int r_eflags; int r_cs; int r_eip; int r_eax; int r_ecx; int r_edx; int r_ebx; int r_ebp; int r_esi; int r_edi; int r_ds; int r_es; int r_fs; int r_gs; } ;
typedef TYPE_1__ elfcore_gregset_t ;



__attribute__((used)) static void
elf_convert_gregset(elfcore_gregset_t *rd, struct reg *rs)
{

 rd->r_gs = rs->r_gs;
 rd->r_fs = rs->r_fs;
 rd->r_es = rs->r_es;
 rd->r_ds = rs->r_ds;
 rd->r_edi = rs->r_rdi;
 rd->r_esi = rs->r_rsi;
 rd->r_ebp = rs->r_rbp;
 rd->r_ebx = rs->r_rbx;
 rd->r_edx = rs->r_rdx;
 rd->r_ecx = rs->r_rcx;
 rd->r_eax = rs->r_rax;
 rd->r_eip = rs->r_rip;
 rd->r_cs = rs->r_cs;
 rd->r_eflags = rs->r_rflags;
 rd->r_esp = rs->r_rsp;
 rd->r_ss = rs->r_ss;
}
