
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ ocs_hw_linkcfg_e ;
struct TYPE_3__ {scalar_t__ linkcfg; size_t config_id; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* skyhawk_linkcfg_map ;

__attribute__((used)) static uint32_t
ocs_hw_config_id_from_linkcfg(ocs_hw_linkcfg_e linkcfg)
{
 uint32_t i;
 for (i = 0; i < ARRAY_SIZE(skyhawk_linkcfg_map); i++) {
  if (skyhawk_linkcfg_map[i].linkcfg == linkcfg) {
   return skyhawk_linkcfg_map[i].config_id;
  }
 }
 return 0;
}
