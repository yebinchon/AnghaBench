
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebus_devinfo {int edi_rl; } ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
ebus_print_res(struct ebus_devinfo *edi)
{
 int retval;

 retval = 0;
 retval += resource_list_print_type(&edi->edi_rl, "addr", SYS_RES_MEMORY,
     "%#jx");
 retval += resource_list_print_type(&edi->edi_rl, "irq", SYS_RES_IRQ,
     "%jd");
 return (retval);
}
