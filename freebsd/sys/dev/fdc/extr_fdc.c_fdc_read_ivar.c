
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_ivars {uintptr_t fdunit; uintptr_t fdtype; } ;
typedef int device_t ;


 int ENOENT ;


 struct fdc_ivars* device_get_ivars (int ) ;

int
fdc_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct fdc_ivars *ivars = device_get_ivars(child);

 switch (which) {
 case 128:
  *result = ivars->fdunit;
  break;
 case 129:
  *result = ivars->fdtype;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
