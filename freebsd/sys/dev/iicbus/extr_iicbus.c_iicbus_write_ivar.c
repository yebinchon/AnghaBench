
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_ivar {uintptr_t addr; } ;
typedef int device_t ;


 int EINVAL ;
 struct iicbus_ivar* IICBUS_IVAR (int ) ;


__attribute__((used)) static int
iicbus_write_ivar(device_t bus, device_t child, int which, uintptr_t value)
{
 struct iicbus_ivar *devi = IICBUS_IVAR(child);

 switch (which) {
 default:
  return (EINVAL);
 case 128:
  if (devi->addr != 0)
   return (EINVAL);
  devi->addr = value;
 }
 return (0);
}
