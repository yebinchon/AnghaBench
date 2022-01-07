
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbus_devinfo {int sdi_rl; } ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
sbus_print_res(struct sbus_devinfo *sdi)
{
 int rv;

 rv = 0;
 rv += resource_list_print_type(&sdi->sdi_rl, "mem", SYS_RES_MEMORY,
     "%#jx");
 rv += resource_list_print_type(&sdi->sdi_rl, "irq", SYS_RES_IRQ,
     "%jd");
 return (rv);
}
