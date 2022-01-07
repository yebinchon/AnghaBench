
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_devinfo {int romid; } ;
typedef int romid_t ;
typedef int device_t ;


 int EINVAL ;


 struct ow_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
ow_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct ow_devinfo *di;
 romid_t **ptr;

 di = device_get_ivars(child);
 switch (which) {
 case 129:
  *result = di->romid & 0xff;
  break;
 case 128:
  ptr = (romid_t **)result;
  *ptr = &di->romid;
  break;
 default:
  return EINVAL;
 }

 return 0;
}
