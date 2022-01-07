
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char const*,int) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_set_resource (int ,int ,int ,int,int) ;
 int device_printf (int ,char*) ;
 int printf (char*,char const*,int) ;
 scalar_t__ resource_int_value (char const*,int,char*,int*) ;
 scalar_t__ resource_long_value (char const*,int,char*,long*) ;

__attribute__((used)) static void
apb_hinted_child(device_t bus, const char *dname, int dunit)
{
 device_t child;
 long maddr;
 int msize;
 int irq;
 int result;
 int mem_hints_count;

 child = BUS_ADD_CHILD(bus, 0, dname, dunit);





 mem_hints_count = 0;
 if (resource_long_value(dname, dunit, "maddr", &maddr) == 0)
  mem_hints_count++;
 if (resource_int_value(dname, dunit, "msize", &msize) == 0)
  mem_hints_count++;


 if ((mem_hints_count > 0) && (mem_hints_count < 2)) {
  printf("Either maddr or msize hint is missing for %s%d\n",
      dname, dunit);
 } else if (mem_hints_count) {
  result = bus_set_resource(child, SYS_RES_MEMORY, 0,
      maddr, msize);
  if (result != 0)
   device_printf(bus,
       "warning: bus_set_resource() failed\n");
 }

 if (resource_int_value(dname, dunit, "irq", &irq) == 0) {
  result = bus_set_resource(child, SYS_RES_IRQ, 0, irq, 1);
  if (result != 0)
   device_printf(bus,
       "warning: bus_set_resource() failed\n");
 }
}
