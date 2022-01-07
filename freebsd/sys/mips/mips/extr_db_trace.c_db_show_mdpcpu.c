
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int pc_asid_generation; int pc_next_asid; int pc_pending_ipis; } ;


 int db_printf (char*,int ) ;

void
db_show_mdpcpu(struct pcpu *pc)
{

 db_printf("ipis         = 0x%x\n", pc->pc_pending_ipis);
 db_printf("next ASID    = %d\n", pc->pc_next_asid);
 db_printf("GENID        = %d\n", pc->pc_asid_generation);
 return;
}
