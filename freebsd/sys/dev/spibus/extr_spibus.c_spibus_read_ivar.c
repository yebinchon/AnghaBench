
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spibus_ivar {int clock; int mode; int cs; } ;
typedef int device_t ;


 int EINVAL ;
 struct spibus_ivar* SPIBUS_IVAR (int ) ;




__attribute__((used)) static int
spibus_read_ivar(device_t bus, device_t child, int which, uintptr_t *result)
{
 struct spibus_ivar *devi = SPIBUS_IVAR(child);

 switch (which) {
 default:
  return (EINVAL);
 case 129:
  *(uint32_t *)result = devi->cs;
  break;
 case 128:
  *(uint32_t *)result = devi->mode;
  break;
 case 130:
  *(uint32_t *)result = devi->clock;
  break;
 }
 return (0);
}
