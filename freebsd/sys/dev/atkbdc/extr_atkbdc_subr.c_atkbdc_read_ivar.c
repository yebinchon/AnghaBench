
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef uintptr_t u_long ;
typedef int device_t ;
struct TYPE_2__ {int compatid; int logicalid; int serial; int vendorid; } ;
typedef TYPE_1__ atkbdc_device_t ;


 int ENOENT ;




 scalar_t__ device_get_ivars (int ) ;

int
atkbdc_read_ivar(device_t bus, device_t dev, int index, uintptr_t *val)
{
 atkbdc_device_t *ivar;

 ivar = (atkbdc_device_t *)device_get_ivars(dev);
 switch (index) {
 case 128:
  *val = (u_long)ivar->vendorid;
  break;
 case 129:
  *val = (u_long)ivar->serial;
  break;
 case 130:
  *val = (u_long)ivar->logicalid;
  break;
 case 131:
  *val = (u_long)ivar->compatid;
  break;
 default:
  return ENOENT;
 }
 return 0;
}
