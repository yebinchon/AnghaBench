
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pcpu {int pc_smp_tlb_done; scalar_t__ pc_common_tssp; int pc_kesp0; int pc_trampstk; int pc_currentldt; int pc_apic_id; } ;


 int db_printf (char*,int ) ;

void
db_show_mdpcpu(struct pcpu *pc)
{

 db_printf("APIC ID      = %d\n", pc->pc_apic_id);
 db_printf("currentldt   = 0x%x\n", pc->pc_currentldt);
 db_printf("trampstk     = 0x%x\n", pc->pc_trampstk);
 db_printf("kesp0        = 0x%x\n", pc->pc_kesp0);
 db_printf("common_tssp  = 0x%x\n", (u_int)pc->pc_common_tssp);
 db_printf("tlb gen      = %u\n", pc->pc_smp_tlb_done);
}
