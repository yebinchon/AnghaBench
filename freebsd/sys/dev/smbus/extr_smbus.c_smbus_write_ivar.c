
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_ivar {uintptr_t addr; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOENT ;

 struct smbus_ivar* device_get_ivars (int ) ;

__attribute__((used)) static int
smbus_write_ivar(device_t parent, device_t child, int which, uintptr_t value)
{
 struct smbus_ivar *devi;

 devi = device_get_ivars(child);
 switch (which) {
 case 128:

  if (devi->addr != 0)
   return (EINVAL);
  devi->addr = value;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
