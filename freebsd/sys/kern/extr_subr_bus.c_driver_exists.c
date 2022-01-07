
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef TYPE_2__* devclass_t ;
struct TYPE_6__ {struct TYPE_6__* parent; } ;
struct TYPE_5__ {TYPE_2__* devclass; } ;


 int * devclass_find_driver_internal (TYPE_2__*,char const*) ;

__attribute__((used)) static bool
driver_exists(device_t bus, const char *driver)
{
 devclass_t dc;

 for (dc = bus->devclass; dc != ((void*)0); dc = dc->parent) {
  if (devclass_find_driver_internal(dc, driver) != ((void*)0))
   return (1);
 }
 return (0);
}
