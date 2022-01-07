
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_ivar {int addr; } ;
typedef int device_t ;


 struct iicbus_ivar* IICBUS_IVAR (int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
iicbus_probe_nomatch(device_t bus, device_t child)
{
 struct iicbus_ivar *devi = IICBUS_IVAR(child);

 device_printf(bus, "<unknown card> at addr %#x\n", devi->addr);
}
