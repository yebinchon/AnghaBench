
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simplebus_devinfo {int rl; } ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
simplebus_print_res(struct simplebus_devinfo *di)
{
 int rv;

 if (di == ((void*)0))
  return (0);
 rv = 0;
 rv += resource_list_print_type(&di->rl, "mem", SYS_RES_MEMORY, "%#jx");
 rv += resource_list_print_type(&di->rl, "irq", SYS_RES_IRQ, "%jd");
 return (rv);
}
