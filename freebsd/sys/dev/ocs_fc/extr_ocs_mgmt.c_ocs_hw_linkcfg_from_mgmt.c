
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ocs_hw_linkcfg_e ;
struct TYPE_3__ {int linkcfg; int mgmt_str; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int OCS_HW_LINKCFG_NA ;
 TYPE_1__* mgmt_linkcfg_map ;
 int ocs_strlen (char const*) ;
 scalar_t__ ocs_strncmp (int ,char const*,int ) ;

__attribute__((used)) static ocs_hw_linkcfg_e
ocs_hw_linkcfg_from_mgmt(const char *mgmt_str)
{
 uint32_t i;
 for (i = 0; i < ARRAY_SIZE(mgmt_linkcfg_map); i++) {
  if (ocs_strncmp(mgmt_linkcfg_map[i].mgmt_str,
    mgmt_str, ocs_strlen(mgmt_str)) == 0) {
   return mgmt_linkcfg_map[i].linkcfg;
  }
 }
 return OCS_HW_LINKCFG_NA;
}
