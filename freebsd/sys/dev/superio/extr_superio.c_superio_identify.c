
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,char*,int) ;
 int ISA_ORDER_SPECULATIVE ;
 int SYS_RES_IOPORT ;
 scalar_t__ bootverbose ;
 int bus_set_resource (int *,int ,int ,scalar_t__,int) ;
 int device_delete_child (int *,int *) ;
 scalar_t__ device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;
 scalar_t__* ports_table ;
 int printf (char*) ;
 scalar_t__ superio_detect (int *,int,int *) ;

__attribute__((used)) static void
superio_identify(driver_t *driver, device_t parent)
{
 device_t child;
 int i;






 if (device_find_child(parent, "superio", -1)) {
  if (bootverbose)
   printf("superio: device(s) already created\n");
  return;
 }






 for (i = 0; ports_table[i] != 0; i++) {
  child = BUS_ADD_CHILD(parent, ISA_ORDER_SPECULATIVE,
      "superio", -1);
  if (child == ((void*)0)) {
   device_printf(parent, "failed to add superio child\n");
   continue;
  }
  bus_set_resource(child, SYS_RES_IOPORT, 0, ports_table[i], 2);
  if (superio_detect(child, 0, ((void*)0)) != 0)
   device_delete_child(parent, child);
 }
}
