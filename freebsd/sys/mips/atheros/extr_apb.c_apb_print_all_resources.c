
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct apb_ivar {struct resource_list resources; } ;
typedef int device_t ;


 struct apb_ivar* DEVTOAPB (int ) ;
 scalar_t__ STAILQ_FIRST (struct resource_list*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ printf (char*) ;
 scalar_t__ resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static int
apb_print_all_resources(device_t dev)
{
 struct apb_ivar *ndev = DEVTOAPB(dev);
 struct resource_list *rl = &ndev->resources;
 int retval = 0;

 if (STAILQ_FIRST(rl))
  retval += printf(" at");

 retval += resource_list_print_type(rl, "mem", SYS_RES_MEMORY, "%#jx");
 retval += resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");

 return (retval);
}
