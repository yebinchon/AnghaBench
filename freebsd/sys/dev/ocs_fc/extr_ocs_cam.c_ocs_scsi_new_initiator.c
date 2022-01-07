
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ac_device_changed {int arrived; int target; int port; int wwpn; } ;
struct ac_contract {scalar_t__ contract_data; int contract_number; } ;
struct TYPE_11__ {int io_high_watermark; } ;
typedef TYPE_3__ ocs_t ;
struct TYPE_10__ {int fc_id; } ;
struct TYPE_12__ {int instance_index; TYPE_2__ rnode; TYPE_1__* sport; TYPE_3__* ocs; } ;
typedef TYPE_4__ ocs_node_t ;
struct TYPE_13__ {int path; } ;
typedef TYPE_5__ ocs_fcport ;
typedef int int32_t ;
struct TYPE_9__ {TYPE_5__* tgt_data; } ;


 int AC_CONTRACT ;
 int AC_CONTRACT_DEV_CHG ;
 int OCS_RSVD_INI_IO ;
 int atomic_subtract_acq_32 (int *,int ) ;
 int ocs_log_err (TYPE_3__*,char*) ;
 int ocs_node_get_wwpn (TYPE_4__*) ;
 int xpt_async (int ,int ,struct ac_contract*) ;

int32_t
ocs_scsi_new_initiator(ocs_node_t *node)
{
 ocs_t *ocs = node->ocs;
 struct ac_contract ac;
 struct ac_device_changed *adc;

 ocs_fcport *fcp = ((void*)0);

 fcp = node->sport->tgt_data;
 if (fcp == ((void*)0)) {
  ocs_log_err(ocs, "FCP is NULL \n");
  return 1;
 }





 atomic_subtract_acq_32(&ocs->io_high_watermark, OCS_RSVD_INI_IO);

 ac.contract_number = AC_CONTRACT_DEV_CHG;
 adc = (struct ac_device_changed *) ac.contract_data;
 adc->wwpn = ocs_node_get_wwpn(node);
 adc->port = node->rnode.fc_id;
 adc->target = node->instance_index;
 adc->arrived = 1;
 xpt_async(AC_CONTRACT, fcp->path, &ac);

 return 0;
}
