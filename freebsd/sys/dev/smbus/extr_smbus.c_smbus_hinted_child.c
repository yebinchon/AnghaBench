
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_ivar {int addr; } ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,char const*,int) ;
 int SMBUS_ORDER_HINTED ;
 int UINT8_MAX ;
 struct smbus_ivar* device_get_ivars (int *) ;
 int device_printf (int *,char*,int,char const*,int) ;
 int resource_int_value (char const*,int,char*,int*) ;

__attribute__((used)) static void
smbus_hinted_child(device_t bus, const char *dname, int dunit)
{
 struct smbus_ivar *devi;
 device_t child;
 int addr;

 addr = 0;
 resource_int_value(dname, dunit, "addr", &addr);
 if (addr > UINT8_MAX) {
  device_printf(bus, "ignored incorrect slave address hint 0x%x"
      " for %s%d\n", addr, dname, dunit);
  return;
 }
 child = BUS_ADD_CHILD(bus, SMBUS_ORDER_HINTED, dname, dunit);
 if (child == ((void*)0))
  return;
 devi = device_get_ivars(child);
 devi->addr = addr;
}
