
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ocs_textbuf_t ;
struct TYPE_3__ {int hw; } ;
typedef TYPE_1__ ocs_t ;


 int MGMT_MODE_RW ;
 int OCS_HW_LINK_CONFIG_SPEED ;
 int ocs_hw_get (int *,int ,scalar_t__*) ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,scalar_t__) ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;

__attribute__((used)) static void
get_configured_speed(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 uint32_t value;

 ocs_hw_get(&(ocs->hw), OCS_HW_LINK_CONFIG_SPEED, &value);
 if (value == 0) {
  ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "configured_speed", "auto");
 } else {
  ocs_mgmt_emit_int(textbuf, MGMT_MODE_RW, "configured_speed", "%d", value);
 }

}
