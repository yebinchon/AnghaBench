
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_28__ ;
typedef struct TYPE_31__ TYPE_24__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_35__ {int hw; } ;
typedef TYPE_4__ ocs_t ;
struct TYPE_36__ {TYPE_4__* ocs; } ;
typedef TYPE_5__ ocs_node_t ;
struct TYPE_37__ {int tgt_task_tag; TYPE_24__* hio; int hw_priv; } ;
typedef TYPE_6__ ocs_io_t ;
struct TYPE_38__ {TYPE_24__* hio; int hw_priv; int auto_xrdy; TYPE_28__* payload; TYPE_2__* header; } ;
typedef TYPE_7__ ocs_hw_sequence_t ;
typedef int int32_t ;
struct TYPE_39__ {int additional_fcp_cdb_length; int fcp_cdb; scalar_t__ task_management_flags; int fcp_lun; } ;
typedef TYPE_8__ fcp_cmnd_iu_t ;
struct TYPE_40__ {int ox_id; } ;
typedef TYPE_9__ fc_header_t ;
struct TYPE_34__ {TYPE_8__* virt; } ;
struct TYPE_30__ {TYPE_9__* virt; } ;
struct TYPE_33__ {TYPE_1__ dma; } ;
struct TYPE_32__ {TYPE_3__ dma; } ;
struct TYPE_31__ {int indicator; TYPE_6__* ul_io; } ;


 int CAM_EXTLUN_BYTE_SWIZZLE (int ) ;
 int FALSE ;
 int OCS_HW_SEND_FRAME_CAPABLE ;
 int OCS_SCSI_IO_ROLE_RESPONDER ;
 int UINT64_MAX ;
 int be64dec (int ) ;
 int node_printf (TYPE_5__*,char*) ;
 int ocs_assert (TYPE_28__*,int) ;
 scalar_t__ ocs_be16toh (int ) ;
 scalar_t__ ocs_get_flags_fcp_cmd (TYPE_8__*) ;
 int ocs_hw_get (int *,int ,scalar_t__*) ;
 int ocs_hw_io_activate_port_owned (int *,TYPE_24__*) ;
 int ocs_hw_sequence_free (int *,TYPE_7__*) ;
 int ocs_log_err (TYPE_4__*,char*,scalar_t__) ;
 int ocs_log_test (TYPE_4__*,char*,int) ;
 int ocs_populate_io_fcp_cmd (TYPE_6__*,TYPE_8__*,TYPE_9__*,int ) ;
 TYPE_6__* ocs_scsi_io_alloc (TYPE_5__*,int ) ;
 int ocs_scsi_io_free (TYPE_6__*) ;
 int ocs_scsi_recv_cmd_first_burst (TYPE_6__*,int ,int ,int,scalar_t__,int *,int ) ;
 int ocs_sframe_send_task_set_full_or_busy (TYPE_5__*,TYPE_7__*) ;
 scalar_t__ ocs_validate_fcp_cmd (TYPE_4__*,TYPE_7__*) ;

__attribute__((used)) static int32_t
ocs_dispatch_fcp_cmd_auto_xfer_rdy(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
 ocs_t *ocs = node->ocs;
 fc_header_t *fchdr = seq->header->dma.virt;
 fcp_cmnd_iu_t *cmnd = ((void*)0);
 ocs_io_t *io = ((void*)0);
 uint64_t lun = UINT64_MAX;
 int32_t rc = 0;

 ocs_assert(seq->payload, -1);
 cmnd = seq->payload->dma.virt;


 if (ocs_validate_fcp_cmd(ocs, seq)) {
  return -1;
 }


 if (!seq->auto_xrdy) {
  node_printf(node, "IO is not Auto Xfr Rdy assisted, dropping FCP_CMND\n");
  return -1;
 }

 lun = CAM_EXTLUN_BYTE_SWIZZLE(be64dec(cmnd->fcp_lun));



 io = ocs_scsi_io_alloc(node, OCS_SCSI_IO_ROLE_RESPONDER);
 if (io == ((void*)0)) {
  uint32_t send_frame_capable;


  rc = ocs_hw_get(&ocs->hw, OCS_HW_SEND_FRAME_CAPABLE, &send_frame_capable);
  if ((rc == 0) && send_frame_capable) {
   rc = ocs_sframe_send_task_set_full_or_busy(node, seq);
   if (rc) {
    ocs_log_test(ocs, "ocs_sframe_send_task_set_full_or_busy failed: %d\n", rc);
   }
   return rc;
  }

  ocs_log_err(ocs, "IO allocation failed ox_id %04x\n", ocs_be16toh(fchdr->ox_id));
  return -1;
 }
 io->hw_priv = seq->hw_priv;


 ocs_populate_io_fcp_cmd(io, cmnd, fchdr, FALSE);

 if (cmnd->task_management_flags) {

  ocs_log_err(ocs, "TMF flags set 0x%x\n", cmnd->task_management_flags);
  ocs_scsi_io_free(io);
  return -1;
 } else {
  uint32_t flags = ocs_get_flags_fcp_cmd(cmnd);


  ocs_hw_io_activate_port_owned(&ocs->hw, seq->hio);
  io->hio = seq->hio;
  seq->hio->ul_io = io;
  io->tgt_task_tag = seq->hio->indicator;


  ocs_scsi_recv_cmd_first_burst(io, lun, cmnd->fcp_cdb,
           sizeof(cmnd->fcp_cdb) +
           (cmnd->additional_fcp_cdb_length * sizeof(uint32_t)),
           flags, ((void*)0), 0);
 }


 ocs_hw_sequence_free(&ocs->hw, seq);
 return 0;
}
