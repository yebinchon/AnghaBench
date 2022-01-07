
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int r_ss; int r_esp; int r_eflags; int r_cs; int r_eip; int r_gs; int r_fs; int r_es; int r_ds; int r_eax; int r_ebp; int r_edi; int r_esi; int r_edx; int r_ecx; int r_ebx; } ;
struct linux_pt_reg {int xss; int esp; int eflags; int xcs; int eip; int xgs; int xfs; int xes; int xds; int eax; int ebp; int edi; int esi; int edx; int ecx; int ebx; } ;



__attribute__((used)) static void
map_regs_from_linux(struct reg *bsd_r, struct linux_pt_reg *linux_r)
{
 bsd_r->r_ebx = linux_r->ebx;
 bsd_r->r_ecx = linux_r->ecx;
 bsd_r->r_edx = linux_r->edx;
 bsd_r->r_esi = linux_r->esi;
 bsd_r->r_edi = linux_r->edi;
 bsd_r->r_ebp = linux_r->ebp;
 bsd_r->r_eax = linux_r->eax;
 bsd_r->r_ds = linux_r->xds;
 bsd_r->r_es = linux_r->xes;
 bsd_r->r_fs = linux_r->xfs;
 bsd_r->r_gs = linux_r->xgs;
 bsd_r->r_eip = linux_r->eip;
 bsd_r->r_cs = linux_r->xcs;
 bsd_r->r_eflags = linux_r->eflags;
 bsd_r->r_esp = linux_r->esp;
 bsd_r->r_ss = linux_r->xss;
}
