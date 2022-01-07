
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_ldt {int ldt_sd; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct TYPE_2__ {int sd; } ;


 int GSEL (int,int ) ;
 int GUSERLDT_SEL ;
 int MA_OWNED ;
 int NGDT ;
 int PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 int SEL_KPL ;
 int cpuid ;
 int currentldt ;
 int dt_lock ;
 TYPE_1__* gdt ;
 int lldt (int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
set_user_ldt_locked(struct mdproc *mdp)
{
 struct proc_ldt *pldt;
 int gdt_idx;

 mtx_assert(&dt_lock, MA_OWNED);

 pldt = mdp->md_ldt;
 gdt_idx = GUSERLDT_SEL;
 gdt_idx += PCPU_GET(cpuid) * NGDT;
 gdt[gdt_idx].sd = pldt->ldt_sd;
 lldt(GSEL(GUSERLDT_SEL, SEL_KPL));
 PCPU_SET(currentldt, GSEL(GUSERLDT_SEL, SEL_KPL));
}
