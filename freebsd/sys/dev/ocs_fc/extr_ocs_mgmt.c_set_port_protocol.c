
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_9__ {scalar_t__ status; int semaphore; } ;
typedef TYPE_2__ ocs_mgmt_set_port_protocol_result_t ;
typedef int ocs_hw_port_protocol_e ;
typedef int int32_t ;


 int ENXIO ;
 int OCS_HW_PORT_PROTOCOL_FC ;
 int OCS_HW_PORT_PROTOCOL_FCOE ;
 int OCS_HW_PORT_PROTOCOL_ISCSI ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_SEM_FOREVER ;
 int ocs_get_bus_dev_func (TYPE_1__*,int *,int *,int *) ;
 int ocs_hw_set_port_protocol (int *,int ,int ,int ,TYPE_2__*) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_log_test (TYPE_1__*,char*,scalar_t__) ;
 int ocs_mgmt_set_port_protocol_cb ;
 int ocs_sem_init (int *,int ,char*) ;
 scalar_t__ ocs_sem_p (int *,int ) ;
 scalar_t__ ocs_strcasecmp (char*,char*) ;

__attribute__((used)) static int32_t
set_port_protocol(ocs_t *ocs, char *name, char *value)
{
 ocs_mgmt_set_port_protocol_result_t result;
 int32_t rc = 0;
 ocs_hw_port_protocol_e new_protocol;
 uint8_t bus;
 uint8_t dev;
 uint8_t func;

 ocs_get_bus_dev_func(ocs, &bus, &dev, &func);

 ocs_sem_init(&(result.semaphore), 0, "set_port_protocol");

 if (ocs_strcasecmp(value, "iscsi") == 0) {
  new_protocol = OCS_HW_PORT_PROTOCOL_ISCSI;
 } else if (ocs_strcasecmp(value, "fc") == 0) {
  new_protocol = OCS_HW_PORT_PROTOCOL_FC;
 } else if (ocs_strcasecmp(value, "fcoe") == 0) {
  new_protocol = OCS_HW_PORT_PROTOCOL_FCOE;
 } else {
  return -1;
 }

 rc = ocs_hw_set_port_protocol(&ocs->hw, new_protocol, func,
           ocs_mgmt_set_port_protocol_cb, &result);
 if (rc == OCS_HW_RTN_SUCCESS) {
  if (ocs_sem_p(&(result.semaphore), OCS_SEM_FOREVER) != 0) {

   ocs_log_err(ocs, "ocs_sem_p failed\n");
   return -ENXIO;
  }
  if (result.status == 0) {

   rc = 0;
  } else {
   rc = -1;
   ocs_log_test(ocs, "setting active profile status 0x%x\n",
         result.status);
  }
 }

 return rc;
}
