
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_ivar {scalar_t__ addr; } ;
typedef int device_t ;


 struct smbus_ivar* device_get_ivars (int ) ;
 int device_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static void
smbus_probe_nomatch(device_t bus, device_t child)
{
 struct smbus_ivar *devi = device_get_ivars(child);





 if (devi->addr != 0)
  device_printf(bus, "<unknown device> at addr %#x\n",
      devi->addr);
}
