
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads111x_chipinfo {int name; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 struct ads111x_chipinfo* ads111x_chip_infos ;
 int compat_data ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int nitems (struct ads111x_chipinfo*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 scalar_t__ ofw_bus_status_okay (int ) ;
 int resource_string_value (int ,int ,char*,char const**) ;
 scalar_t__ strcasecmp (char const*,int ) ;

__attribute__((used)) static const struct ads111x_chipinfo *
ads111x_find_chipinfo(device_t dev)
{
 const struct ads111x_chipinfo *info;
 const char *chiptype;
 int i;
 chiptype = ((void*)0);
 resource_string_value(device_get_name(dev), device_get_unit(dev),
     "type", &chiptype);
 if (chiptype != ((void*)0)) {
  for (i = 0; i < nitems(ads111x_chip_infos); ++i) {
   info = &ads111x_chip_infos[i];
   if (strcasecmp(chiptype, info->name) == 0)
    return (info);
  }
 }
 return (((void*)0));
}
