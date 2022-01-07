
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ocd_data; int * ocd_str; } ;
typedef TYPE_1__ nxprtc_compat_data ;
typedef int device_t ;
struct TYPE_6__ {int ocd_data; } ;


 int TYPE_NONE ;
 int TYPE_PCF8563 ;
 TYPE_1__* compat_data ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 TYPE_2__* ofw_bus_search_compatible (int ,TYPE_1__*) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static int
nxprtc_get_chiptype(device_t dev)
{




 nxprtc_compat_data *cdata;
 const char *htype;
 int chiptype;






 if (resource_string_value(device_get_name(dev),
     device_get_unit(dev), "compatible", &htype) == 0) {
  for (cdata = compat_data; cdata->ocd_str != ((void*)0); ++cdata) {
   if (strcmp(htype, cdata->ocd_str) == 0)
    break;
  }
  chiptype = cdata->ocd_data;
 } else
  chiptype = TYPE_NONE;





 if (chiptype == TYPE_NONE)
  return (TYPE_PCF8563);
 else
  return (chiptype);

}
