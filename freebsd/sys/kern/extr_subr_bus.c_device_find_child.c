
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef int devclass_t ;
struct TYPE_5__ {struct TYPE_5__* parent; } ;


 int devclass_find (char const*) ;
 TYPE_1__* devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;

device_t
device_find_child(device_t dev, const char *classname, int unit)
{
 devclass_t dc;
 device_t child;

 dc = devclass_find(classname);
 if (!dc)
  return (((void*)0));

 if (unit != -1) {
  child = devclass_get_device(dc, unit);
  if (child && child->parent == dev)
   return (child);
 } else {
  for (unit = 0; unit < devclass_get_maxunit(dc); unit++) {
   child = devclass_get_device(dc, unit);
   if (child && child->parent == dev)
    return (child);
  }
 }
 return (((void*)0));
}
