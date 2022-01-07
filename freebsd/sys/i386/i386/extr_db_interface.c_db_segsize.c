
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct trapframe {int tf_eflags; int tf_cs; } ;
struct segment_descriptor {scalar_t__ sd_def32; } ;
struct proc_ldt {struct segment_descriptor ldt_sd; } ;
struct TYPE_10__ {TYPE_2__* td_proc; } ;
struct TYPE_9__ {struct segment_descriptor sd; } ;
struct TYPE_8__ {struct segment_descriptor sd; } ;
struct TYPE_6__ {struct proc_ldt* md_ldt; } ;
struct TYPE_7__ {TYPE_1__ p_md; } ;


 int GCODE_SEL ;
 int GSEL (int ,int ) ;
 size_t IDXSEL (int) ;
 scalar_t__ ISLDT (int) ;
 size_t NGDT ;
 size_t PCPU_GET (int ) ;
 int PSL_VM ;
 int SEL_KPL ;
 int cpuid ;
 TYPE_5__* curthread ;
 TYPE_4__* gdt ;
 TYPE_3__* ldt ;

int
db_segsize(struct trapframe *tfp)
{
 struct proc_ldt *plp;
 struct segment_descriptor *sdp;
 int sel;

 if (tfp == ((void*)0))
     return (32);
 if (tfp->tf_eflags & PSL_VM)
     return (16);
 sel = tfp->tf_cs & 0xffff;
 if (sel == GSEL(GCODE_SEL, SEL_KPL))
     return (32);

 if (ISLDT(sel)) {
     plp = curthread->td_proc->p_md.md_ldt;
     sdp = (plp != ((void*)0)) ? &plp->ldt_sd : &ldt[0].sd;
 } else {
     sdp = &gdt[PCPU_GET(cpuid) * NGDT].sd;
 }
 return (sdp[IDXSEL(sel)].sd_def32 == 0 ? 16 : 32);
}
