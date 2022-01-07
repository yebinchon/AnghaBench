
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 scalar_t__ BUS_ADD_CHILD (scalar_t__,int,char const*,int) ;
 int ISACFGATTR_HINTS ;
 int ISA_ORDER_SENSITIVE ;
 int ISA_ORDER_SPECULATIVE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_set_resource (scalar_t__,int ,int ,int,int) ;
 int device_disable (scalar_t__) ;
 int isa_get_configattr (scalar_t__) ;
 int isa_set_configattr (scalar_t__,int) ;
 scalar_t__ resource_disabled (char const*,int) ;
 scalar_t__ resource_int_value (char const*,int,char*,int*) ;

void
isa_hinted_child(device_t parent, const char *name, int unit)
{
 device_t child;
 int sensitive, start, count;
 int order;


 sensitive = 0;
 if (resource_int_value(name, unit, "sensitive", &sensitive) != 0)
  resource_int_value(name, -1, "sensitive", &sensitive);

 if (sensitive)
  order = ISA_ORDER_SENSITIVE;
 else
  order = ISA_ORDER_SPECULATIVE;

 child = BUS_ADD_CHILD(parent, order, name, unit);
 if (child == 0)
  return;

 start = 0;
 count = 0;
 resource_int_value(name, unit, "port", &start);
 resource_int_value(name, unit, "portsize", &count);
 if (start > 0 || count > 0)
  bus_set_resource(child, SYS_RES_IOPORT, 0, start, count);

 start = 0;
 count = 0;
 resource_int_value(name, unit, "maddr", &start);
 resource_int_value(name, unit, "msize", &count);
 if (start > 0 || count > 0)
  bus_set_resource(child, SYS_RES_MEMORY, 0, start, count);

 if (resource_int_value(name, unit, "irq", &start) == 0 && start > 0)
  bus_set_resource(child, SYS_RES_IRQ, 0, start, 1);

 if (resource_int_value(name, unit, "drq", &start) == 0 && start >= 0)
  bus_set_resource(child, SYS_RES_DRQ, 0, start, 1);

 if (resource_disabled(name, unit))
  device_disable(child);

 isa_set_configattr(child, (isa_get_configattr(child)|ISACFGATTR_HINTS));
}
