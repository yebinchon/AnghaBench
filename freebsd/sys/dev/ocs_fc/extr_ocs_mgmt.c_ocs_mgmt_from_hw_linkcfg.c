
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ ocs_hw_linkcfg_e ;
struct TYPE_3__ {scalar_t__ linkcfg; char const* mgmt_str; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 char const* OCS_CONFIG_LINKCFG_UNKNOWN ;
 TYPE_1__* mgmt_linkcfg_map ;

__attribute__((used)) static const char *
ocs_mgmt_from_hw_linkcfg(ocs_hw_linkcfg_e linkcfg)
{
 uint32_t i;
 for (i = 0; i < ARRAY_SIZE(mgmt_linkcfg_map); i++) {
  if (mgmt_linkcfg_map[i].linkcfg == linkcfg) {
   return mgmt_linkcfg_map[i].mgmt_str;
  }
 }
 return OCS_CONFIG_LINKCFG_UNKNOWN;
}
