
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_3__ {int hw; } ;
typedef TYPE_1__ ocs_t ;


 int MGMT_MODE_RD ;
 int OCS_HW_FW_REV ;
 int ocs_hw_get_ptr (int *,int ) ;
 int ocs_mgmt_emit_string (int *,int ,char*,int ) ;

__attribute__((used)) static void
get_fw_rev(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "fw_rev", ocs_hw_get_ptr(&ocs->hw, OCS_HW_FW_REV));
}
