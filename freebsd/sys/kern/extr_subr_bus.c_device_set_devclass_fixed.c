
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_4__ {int flags; } ;


 int DF_FIXEDCLASS ;
 int EINVAL ;
 int device_set_devclass (TYPE_1__*,char const*) ;

int
device_set_devclass_fixed(device_t dev, const char *classname)
{
 int error;

 if (classname == ((void*)0))
  return (EINVAL);

 error = device_set_devclass(dev, classname);
 if (error)
  return (error);
 dev->flags |= DF_FIXEDCLASS;
 return (0);
}
