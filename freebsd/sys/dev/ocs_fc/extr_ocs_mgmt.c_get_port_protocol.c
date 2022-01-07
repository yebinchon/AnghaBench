
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ocs_textbuf_t ;
struct TYPE_8__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_9__ {scalar_t__ status; int port_protocol; int semaphore; } ;
typedef TYPE_2__ ocs_mgmt_get_port_protocol_result_t ;


 int MGMT_MODE_RW ;




 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_SEM_FOREVER ;
 int ocs_get_bus_dev_func (TYPE_1__*,int *,int *,int *) ;
 scalar_t__ ocs_hw_get_port_protocol (int *,int ,int ,TYPE_2__*) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_log_test (TYPE_1__*,char*,scalar_t__) ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;
 int ocs_mgmt_get_port_protocol_cb ;
 int ocs_sem_init (int *,int ,char*) ;
 scalar_t__ ocs_sem_p (int *,int ) ;

__attribute__((used)) static void
get_port_protocol(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 ocs_mgmt_get_port_protocol_result_t result;
 uint8_t bus;
 uint8_t dev;
 uint8_t func;

 ocs_sem_init(&(result.semaphore), 0, "get_port_protocol");

 ocs_get_bus_dev_func(ocs, &bus, &dev, &func);

 if(ocs_hw_get_port_protocol(&ocs->hw, func, ocs_mgmt_get_port_protocol_cb, &result) == OCS_HW_RTN_SUCCESS) {
  if (ocs_sem_p(&(result.semaphore), OCS_SEM_FOREVER) != 0) {

   ocs_log_err(ocs, "ocs_sem_p failed\n");
  }
  if (result.status == 0) {
   switch (result.port_protocol) {
   case 129:
    ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "port_protocol", "iSCSI");
    break;
   case 130:
    ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "port_protocol", "FCoE");
    break;
   case 131:
    ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "port_protocol", "FC");
    break;
   case 128:
    ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "port_protocol", "Other");
    break;
   }
  } else {
   ocs_log_test(ocs, "getting port profile status 0x%x\n", result.status);
   ocs_mgmt_emit_string(textbuf, MGMT_MODE_RW, "port_protocol", "Unknown");
  }
 }
}
