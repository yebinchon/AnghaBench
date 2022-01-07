
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int pc_ipimask; int pc_hwref; } ;


 int db_printf (char*,int ) ;

void
db_show_mdpcpu(struct pcpu *pc)
{

 db_printf("PPC: hwref   = %#zx\n", pc->pc_hwref);
 db_printf("PPC: ipimask = %#x\n", pc->pc_ipimask);
}
