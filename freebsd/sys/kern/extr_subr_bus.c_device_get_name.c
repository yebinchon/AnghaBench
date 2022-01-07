
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {scalar_t__ devclass; } ;


 char const* devclass_get_name (scalar_t__) ;

const char *
device_get_name(device_t dev)
{
 if (dev != ((void*)0) && dev->devclass)
  return (devclass_get_name(dev->devclass));
 return (((void*)0));
}
