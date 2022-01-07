
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_ivar {scalar_t__ addr; int rl; } ;
typedef int device_t ;


 struct iicbus_ivar* IICBUS_IVAR (int ) ;
 int SYS_RES_IRQ ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 scalar_t__ printf (char*,scalar_t__) ;
 int resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
iicbus_print_child(device_t dev, device_t child)
{
 struct iicbus_ivar *devi = IICBUS_IVAR(child);
 int retval = 0;

 retval += bus_print_child_header(dev, child);
 if (devi->addr != 0)
  retval += printf(" at addr %#x", devi->addr);
 resource_list_print_type(&devi->rl, "irq", SYS_RES_IRQ, "%jd");
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
