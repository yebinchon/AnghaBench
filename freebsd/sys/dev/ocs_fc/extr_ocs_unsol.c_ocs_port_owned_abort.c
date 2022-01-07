
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_9__ {int indicator; } ;
typedef TYPE_2__ ocs_hw_io_t ;


 int FALSE ;
 scalar_t__ OCS_HW_RTN_IO_ABORT_IN_PROGRESS ;
 scalar_t__ OCS_HW_RTN_IO_PORT_OWNED_ALREADY_ABORTED ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ ocs_hw_io_abort (int *,TYPE_2__*,int ,int ,TYPE_1__*) ;
 int ocs_log_debug (TYPE_1__*,char*,int ,...) ;
 int ocs_unsol_abort_cb ;

__attribute__((used)) static void
ocs_port_owned_abort(ocs_t *ocs, ocs_hw_io_t *hio)
{
 ocs_hw_rtn_e hw_rc;
 hw_rc = ocs_hw_io_abort(&ocs->hw, hio, FALSE,
      ocs_unsol_abort_cb, ocs);
 if((hw_rc == OCS_HW_RTN_IO_ABORT_IN_PROGRESS) ||
    (hw_rc == OCS_HW_RTN_IO_PORT_OWNED_ALREADY_ABORTED)) {
  ocs_log_debug(ocs, "already aborted XRI 0x%x\n", hio->indicator);
 } else if(hw_rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_debug(ocs, "Error aborting XRI 0x%x status %d\n",
         hio->indicator, hw_rc);
 }
}
