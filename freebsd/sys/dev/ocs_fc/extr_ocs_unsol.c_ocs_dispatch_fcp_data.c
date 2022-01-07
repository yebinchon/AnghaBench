
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_18__ {TYPE_1__* ocs; } ;
typedef TYPE_2__ ocs_node_t ;
struct TYPE_19__ {int seq_init; int init_task_tag; int transferred; } ;
typedef TYPE_3__ ocs_io_t ;
typedef int ocs_hw_t ;
struct TYPE_20__ {TYPE_5__* payload; TYPE_5__* hio; int status; } ;
typedef TYPE_4__ ocs_hw_sequence_t ;
struct TYPE_22__ {int len; } ;
struct TYPE_21__ {int indicator; TYPE_6__ dma; TYPE_3__* ul_io; } ;
typedef TYPE_5__ ocs_hw_io_t ;
typedef TYPE_6__ ocs_dma_t ;
typedef int int32_t ;


 int OCS_HW_UNSOL_SUCCESS ;
 int OCS_SCSI_FIRST_BURST_ERR ;
 int ocs_assert (TYPE_5__*,int) ;
 int ocs_hw_is_io_port_owned (int *,TYPE_5__*) ;
 int ocs_hw_sequence_free (int *,TYPE_4__*) ;
 int ocs_log_err (TYPE_1__*,char*,int ,...) ;
 int ocs_port_owned_abort (TYPE_1__*,TYPE_5__*) ;
 scalar_t__ ocs_scsi_recv_cmd_first_burst (TYPE_3__*,int ,int *,int ,int ,TYPE_6__*,int ) ;

__attribute__((used)) static int32_t
ocs_dispatch_fcp_data(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
 ocs_t *ocs = node->ocs;
 ocs_hw_t *hw = &ocs->hw;
 ocs_hw_io_t *hio = seq->hio;
 ocs_io_t *io;
 ocs_dma_t fburst[1];

 ocs_assert(seq->payload, -1);
 ocs_assert(hio, -1);

 io = hio->ul_io;
 if (io == ((void*)0)) {
  ocs_log_err(ocs, "data received for NULL io, xri=0x%x\n",
       hio->indicator);
  return -1;
 }





 if (!ocs_hw_is_io_port_owned(hw, seq->hio)) {
  ocs_log_err(ocs, "data received for host owned XRI, xri=0x%x\n",
       hio->indicator);
  return -1;
 }


 if (seq->status != OCS_HW_UNSOL_SUCCESS) {
  ocs_log_err(ocs, "data with status 0x%x received, xri=0x%x\n",
       seq->status, hio->indicator);






  ocs_port_owned_abort(ocs, seq->hio);





  ocs_scsi_recv_cmd_first_burst(io, 0, ((void*)0), 0, OCS_SCSI_FIRST_BURST_ERR, ((void*)0), 0);
  return -1;
 }


 io->seq_init = 1;


 fburst[0] = seq->payload->dma;


 io->transferred = seq->payload->dma.len;

 if (ocs_scsi_recv_cmd_first_burst(io, 0, ((void*)0), 0, 0,
       fburst, io->transferred)) {
  ocs_log_err(ocs, "error passing first burst, xri=0x%x, oxid=0x%x\n",
       hio->indicator, io->init_task_tag);
 }


 ocs_hw_sequence_free(&ocs->hw, seq);
 return 0;
}
