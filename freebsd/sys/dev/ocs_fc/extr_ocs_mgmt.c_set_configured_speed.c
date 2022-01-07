
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int xport; int hw; } ;
typedef TYPE_1__ ocs_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_HW_LINK_SPEED ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_XPORT_PORT_OFFLINE ;
 int OCS_XPORT_PORT_ONLINE ;
 scalar_t__ ocs_hw_set (int *,int ,int) ;
 int ocs_log_debug (TYPE_1__*,char*,...) ;
 int ocs_log_test (TYPE_1__*,char*,...) ;
 int ocs_strtoul (char*,int *,int ) ;
 int ocs_xport_control (int ,int ) ;

int
set_configured_speed(ocs_t *ocs, char *name, char *value)
{
 int result = 0;
 ocs_hw_rtn_e hw_rc;
 int xport_rc;
 uint32_t spd;

 spd = ocs_strtoul(value, ((void*)0), 0);

 if ((spd != 0) && (spd != 2000) && (spd != 4000) &&
  (spd != 8000) && (spd != 16000) && (spd != 32000)) {
  ocs_log_test(ocs, "unsupported speed %d\n", spd);
  return 1;
 }

 ocs_log_debug(ocs, "Taking port offline\n");
 xport_rc = ocs_xport_control(ocs->xport, OCS_XPORT_PORT_OFFLINE);
 if (xport_rc != 0) {
  ocs_log_test(ocs, "Port offline failed\n");
  result = 1;
 } else {
  ocs_log_debug(ocs, "Setting port to speed %d\n", spd);
  hw_rc = ocs_hw_set(&ocs->hw, OCS_HW_LINK_SPEED, spd);
  if (hw_rc != OCS_HW_RTN_SUCCESS) {
   ocs_log_test(ocs, "Speed set failed\n");
   result = 1;
  }




  ocs_log_debug(ocs, "Bringing port online\n");
  xport_rc = ocs_xport_control(ocs->xport, OCS_XPORT_PORT_ONLINE);
  if (xport_rc != 0) {
   result = 1;
  }
 }

 return result;
}
