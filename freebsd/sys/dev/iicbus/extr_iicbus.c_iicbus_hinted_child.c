
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_ivar {int addr; } ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char const*,int) ;
 struct iicbus_ivar* IICBUS_IVAR (int ) ;
 int SYS_RES_IRQ ;
 scalar_t__ bus_set_resource (int ,int ,int ,int,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ resource_int_value (char const*,int,char*,int*) ;

__attribute__((used)) static void
iicbus_hinted_child(device_t bus, const char *dname, int dunit)
{
 device_t child;
 int irq;
 struct iicbus_ivar *devi;

 child = BUS_ADD_CHILD(bus, 0, dname, dunit);
 devi = IICBUS_IVAR(child);
 resource_int_value(dname, dunit, "addr", &devi->addr);
 if (resource_int_value(dname, dunit, "irq", &irq) == 0) {
  if (bus_set_resource(child, SYS_RES_IRQ, 0, irq, 1) != 0)
   device_printf(bus,
       "warning: bus_set_resource() failed\n");
 }
}
