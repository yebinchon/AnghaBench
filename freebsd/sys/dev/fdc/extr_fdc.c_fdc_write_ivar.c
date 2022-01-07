
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_ivars {uintptr_t fdunit; uintptr_t fdtype; } ;
typedef int device_t ;


 int ENOENT ;


 struct fdc_ivars* device_get_ivars (int ) ;

int
fdc_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{
 struct fdc_ivars *ivars = device_get_ivars(child);

 switch (which) {
 case 128:
  ivars->fdunit = value;
  break;
 case 129:
  ivars->fdtype = value;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
