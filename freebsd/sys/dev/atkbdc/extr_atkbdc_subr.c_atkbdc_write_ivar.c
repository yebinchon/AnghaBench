
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int32_t ;
typedef int device_t ;
struct TYPE_2__ {void* compatid; void* logicalid; void* serial; void* vendorid; } ;
typedef TYPE_1__ atkbdc_device_t ;


 int ENOENT ;




 scalar_t__ device_get_ivars (int ) ;

int
atkbdc_write_ivar(device_t bus, device_t dev, int index, uintptr_t val)
{
 atkbdc_device_t *ivar;

 ivar = (atkbdc_device_t *)device_get_ivars(dev);
 switch (index) {
 case 128:
  ivar->vendorid = (u_int32_t)val;
  break;
 case 129:
  ivar->serial = (u_int32_t)val;
  break;
 case 130:
  ivar->logicalid = (u_int32_t)val;
  break;
 case 131:
  ivar->compatid = (u_int32_t)val;
  break;
 default:
  return ENOENT;
 }
 return 0;
}
