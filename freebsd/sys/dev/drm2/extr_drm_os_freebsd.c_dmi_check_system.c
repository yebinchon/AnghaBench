
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmi_system_id {scalar_t__ (* callback ) (struct dmi_system_id const*) ;TYPE_1__* matches; } ;
struct TYPE_2__ {scalar_t__ slot; } ;


 scalar_t__ dmi_found (struct dmi_system_id const*) ;
 scalar_t__ stub1 (struct dmi_system_id const*) ;

bool
dmi_check_system(const struct dmi_system_id *sysid)
{
 const struct dmi_system_id *dsi;
 bool res;

 for (res = 0, dsi = sysid; dsi->matches[0].slot != 0 ; dsi++) {
  if (dmi_found(dsi)) {
   res = 1;
   if (dsi->callback != ((void*)0) && dsi->callback(dsi))
    break;
  }
 }
 return (res);
}
