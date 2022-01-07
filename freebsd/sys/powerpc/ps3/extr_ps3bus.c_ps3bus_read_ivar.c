
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3bus_devinfo {uintptr_t bus; uintptr_t dev; uintptr_t bustype; uintptr_t devtype; uintptr_t busidx; uintptr_t devidx; } ;
typedef int device_t ;


 int EINVAL ;






 struct ps3bus_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
ps3bus_read_ivar(device_t bus, device_t child, int which, uintptr_t *result)
{
 struct ps3bus_devinfo *dinfo = device_get_ivars(child);

 switch (which) {
 case 133:
  *result = dinfo->bus;
  break;
 case 130:
  *result = dinfo->dev;
  break;
 case 131:
  *result = dinfo->bustype;
  break;
 case 128:
  *result = dinfo->devtype;
  break;
 case 132:
  *result = dinfo->busidx;
  break;
 case 129:
  *result = dinfo->devidx;
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
