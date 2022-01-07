
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ocs_hw_linkcfg_e ;
struct TYPE_3__ {size_t const config_id; int linkcfg; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int OCS_HW_LINKCFG_NA ;
 TYPE_1__* skyhawk_linkcfg_map ;

__attribute__((used)) static ocs_hw_linkcfg_e
ocs_hw_linkcfg_from_config_id(const uint32_t config_id)
{
 uint32_t i;
 for (i = 0; i < ARRAY_SIZE(skyhawk_linkcfg_map); i++) {
  if (skyhawk_linkcfg_map[i].config_id == config_id) {
   return skyhawk_linkcfg_map[i].linkcfg;
  }
 }
 return OCS_HW_LINKCFG_NA;
}
