
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3bus_devinfo {int resources; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct ps3bus_devinfo* device_get_ivars (int ) ;
 scalar_t__ resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
ps3bus_print_child(device_t dev, device_t child)
{
 struct ps3bus_devinfo *dinfo = device_get_ivars(child);
 int retval = 0;

 retval += bus_print_child_header(dev, child);
 retval += resource_list_print_type(&dinfo->resources, "mem",
     SYS_RES_MEMORY, "%#jx");
 retval += resource_list_print_type(&dinfo->resources, "irq",
     SYS_RES_IRQ, "%jd");

 retval += bus_print_child_footer(dev, child);

 return (retval);
}
