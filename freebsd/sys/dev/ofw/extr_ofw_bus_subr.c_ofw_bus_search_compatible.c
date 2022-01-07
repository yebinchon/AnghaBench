
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {int * ocd_str; } ;
typedef int device_t ;


 scalar_t__ ofw_bus_is_compatible (int ,int *) ;

const struct ofw_compat_data *
ofw_bus_search_compatible(device_t dev, const struct ofw_compat_data *compat)
{

 if (compat == ((void*)0))
  return ((void*)0);

 for (; compat->ocd_str != ((void*)0); ++compat) {
  if (ofw_bus_is_compatible(dev, compat->ocd_str))
   break;
 }

 return (compat);
}
