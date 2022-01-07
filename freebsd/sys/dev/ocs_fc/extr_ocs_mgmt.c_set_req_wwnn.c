
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int xport; } ;
typedef TYPE_1__ ocs_t ;


 int OCS_XPORT_PORT_OFFLINE ;
 int OCS_XPORT_PORT_ONLINE ;
 int OCS_XPORT_WWNN_SET ;
 int ocs_log_test (TYPE_1__*,char*,...) ;
 scalar_t__ ocs_strcasecmp (char*,char*) ;
 int ocs_xport_control (int ,int ,...) ;
 scalar_t__ parse_wwn (char*,scalar_t__*) ;

int
set_req_wwnn(ocs_t *ocs, char *name, char *value)
{
 int rc;
 uint64_t wwnn;

 if (ocs_strcasecmp(value, "default") == 0) {
  wwnn = 0;
 }
 else if (parse_wwn(value, &wwnn) != 0) {
  ocs_log_test(ocs, "Invalid WWNN: %s\n", value);
  return 1;
 }

 rc = ocs_xport_control(ocs->xport, OCS_XPORT_WWNN_SET, wwnn);

 if(rc) {
  ocs_log_test(ocs, "OCS_XPORT_WWNN_SET failed: %d\n", rc);
  return rc;
 }

 rc = ocs_xport_control(ocs->xport, OCS_XPORT_PORT_OFFLINE);
 if (rc) {
  ocs_log_test(ocs, "port offline failed : %d\n", rc);
 }

 rc = ocs_xport_control(ocs->xport, OCS_XPORT_PORT_ONLINE);
 if (rc) {
  ocs_log_test(ocs, "port online failed : %d\n", rc);
 }

 return rc;
}
