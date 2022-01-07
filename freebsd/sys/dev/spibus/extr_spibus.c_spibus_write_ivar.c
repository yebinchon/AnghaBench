
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct spibus_ivar {void* mode; void* clock; } ;
typedef scalar_t__ device_t ;


 int EDOOFUS ;
 int EINVAL ;
 struct spibus_ivar* SPIBUS_IVAR (scalar_t__) ;



 scalar_t__ device_get_parent (scalar_t__) ;

__attribute__((used)) static int
spibus_write_ivar(device_t bus, device_t child, int which, uintptr_t value)
{
 struct spibus_ivar *devi = SPIBUS_IVAR(child);

 if (devi == ((void*)0) || device_get_parent(child) != bus)
  return (EDOOFUS);

 switch (which) {
 case 130:

  if (value == 0)
   return (EINVAL);
  devi->clock = (uint32_t)value;
  break;
 case 129:

  return (EINVAL);
 case 128:

  if (value > 3)
   return (EINVAL);
  devi->mode = (uint32_t)value;
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
