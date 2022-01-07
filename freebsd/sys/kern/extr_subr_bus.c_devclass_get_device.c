
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * device_t ;
typedef TYPE_1__* devclass_t ;
struct TYPE_3__ {int maxunit; int ** devices; } ;



device_t
devclass_get_device(devclass_t dc, int unit)
{
 if (dc == ((void*)0) || unit < 0 || unit >= dc->maxunit)
  return (((void*)0));
 return (dc->devices[unit]);
}
