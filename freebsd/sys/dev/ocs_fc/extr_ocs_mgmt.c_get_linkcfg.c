
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ocs_textbuf_t ;
struct TYPE_3__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
typedef scalar_t__ ocs_hw_linkcfg_e ;


 int MGMT_MODE_RW ;
 int OCS_HW_LINKCFG ;
 int ocs_hw_get (int *,int ,scalar_t__*) ;
 int ocs_mgmt_emit_string (int *,int ,char*,char const*) ;
 char* ocs_mgmt_from_hw_linkcfg (scalar_t__) ;

__attribute__((used)) static void
get_linkcfg(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 const char *linkcfg_str = ((void*)0);
 uint32_t value;
 ocs_hw_linkcfg_e linkcfg;
 ocs_hw_get(&ocs->hw, OCS_HW_LINKCFG, &value);
 linkcfg = (ocs_hw_linkcfg_e)value;
 linkcfg_str = ocs_mgmt_from_hw_linkcfg(linkcfg);
 ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "linkcfg", linkcfg_str);
}
