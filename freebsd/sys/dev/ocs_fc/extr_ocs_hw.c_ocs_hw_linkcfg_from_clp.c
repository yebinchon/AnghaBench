
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ocs_hw_linkcfg_e ;
struct TYPE_3__ {int linkcfg; int clp_str; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int OCS_HW_LINKCFG_NA ;
 TYPE_1__* linkcfg_map ;
 int ocs_strlen (char const*) ;
 scalar_t__ ocs_strncmp (int ,char const*,int ) ;

__attribute__((used)) static ocs_hw_linkcfg_e
ocs_hw_linkcfg_from_clp(const char *clp_str)
{
 uint32_t i;
 for (i = 0; i < ARRAY_SIZE(linkcfg_map); i++) {
  if (ocs_strncmp(linkcfg_map[i].clp_str, clp_str, ocs_strlen(clp_str)) == 0) {
   return linkcfg_map[i].linkcfg;
  }
 }
 return OCS_HW_LINKCFG_NA;
}
