
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fhc_devinfo {int fdi_rl; } ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
fhc_print_res(struct fhc_devinfo *fdi)
{
 int rv;

 rv = 0;
 rv += resource_list_print_type(&fdi->fdi_rl, "mem", SYS_RES_MEMORY,
     "%#jx");
 rv += resource_list_print_type(&fdi->fdi_rl, "irq", SYS_RES_IRQ, "%jd");
 return (rv);
}
