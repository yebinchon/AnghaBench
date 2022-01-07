
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ value; } ;
typedef TYPE_1__ ocs_xport_stats_t ;
typedef int ocs_textbuf_t ;
struct TYPE_6__ {int xport; } ;
typedef TYPE_2__ ocs_t ;


 int MGMT_MODE_RD ;
 scalar_t__ OCS_XPORT_PORT_ONLINE ;
 int OCS_XPORT_PORT_STATUS ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;
 scalar_t__ ocs_xport_status (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
get_current_link_state(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_xport_stats_t value;

 if (ocs_xport_status(ocs->xport, OCS_XPORT_PORT_STATUS, &value) == 0) {
  if (value.value == OCS_XPORT_PORT_ONLINE) {
   ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "current_link_state", "online");
  } else {
   ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "current_link_state", "offline");
  }
 }
}
