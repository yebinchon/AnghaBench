
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_softc {TYPE_1__* ver_info; int dev; } ;
struct TYPE_2__ {int hwrm_if_ver; int hwrm_if_update; int hwrm_min_update; int hwrm_if_minor; int hwrm_min_minor; int hwrm_if_major; int hwrm_min_major; } ;


 int device_printf (int ,char*,int ,char*) ;
 int sprintf (char*,char*,int ,int ,int ) ;

bool
bnxt_check_hwrm_version(struct bnxt_softc *softc)
{
 char buf[16];

 sprintf(buf, "%hhu.%hhu.%hhu", softc->ver_info->hwrm_min_major,
     softc->ver_info->hwrm_min_minor, softc->ver_info->hwrm_min_update);
 if (softc->ver_info->hwrm_min_major > softc->ver_info->hwrm_if_major) {
  device_printf(softc->dev,
      "WARNING: HWRM version %s is too old (older than %s)\n",
      softc->ver_info->hwrm_if_ver, buf);
  return 0;
 }
 else if(softc->ver_info->hwrm_min_major ==
     softc->ver_info->hwrm_if_major) {
  if (softc->ver_info->hwrm_min_minor >
      softc->ver_info->hwrm_if_minor) {
   device_printf(softc->dev,
       "WARNING: HWRM version %s is too old (older than %s)\n",
       softc->ver_info->hwrm_if_ver, buf);
   return 0;
  }
  else if (softc->ver_info->hwrm_min_minor ==
      softc->ver_info->hwrm_if_minor) {
   if (softc->ver_info->hwrm_min_update >
       softc->ver_info->hwrm_if_update) {
    device_printf(softc->dev,
        "WARNING: HWRM version %s is too old (older than %s)\n",
        softc->ver_info->hwrm_if_ver, buf);
    return 0;
   }
  }
 }
 return 1;
}
