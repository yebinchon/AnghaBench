
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
typedef struct TYPE_32__ TYPE_29__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_35__ {int hw; } ;
typedef TYPE_4__ ocs_t ;
struct TYPE_36__ {TYPE_4__* ocs; } ;
typedef TYPE_5__ ocs_node_t ;
struct TYPE_37__ {scalar_t__ app_id; int hw_priv; } ;
typedef TYPE_6__ ocs_io_t ;
struct TYPE_38__ {int hw_priv; TYPE_29__* payload; TYPE_2__* header; } ;
typedef TYPE_7__ ocs_hw_sequence_t ;
typedef int int32_t ;
struct TYPE_39__ {int additional_fcp_cdb_length; int fcp_cdb; scalar_t__ task_management_flags; int fcp_lun; } ;
typedef TYPE_8__ fcp_cmnd_iu_t ;
struct TYPE_40__ {int src_vmid; } ;
typedef TYPE_9__ fc_vm_header_t ;
struct TYPE_30__ {int df_ctl; int ox_id; } ;
typedef TYPE_10__ fc_header_t ;
struct TYPE_34__ {TYPE_8__* virt; } ;
struct TYPE_31__ {TYPE_10__* virt; } ;
struct TYPE_33__ {TYPE_1__ dma; } ;
struct TYPE_32__ {TYPE_3__ dma; } ;


 scalar_t__ CAM_EXTLUN_BYTE_SWIZZLE (int ) ;
 int FC_DFCTL_DEVICE_HDR_16_MASK ;
 int FC_DFCTL_ESP_HDR_MASK ;
 int FC_DFCTL_ESP_HDR_SIZE ;
 int FC_DFCTL_NETWORK_HDR_MASK ;
 int FC_DFCTL_NETWORK_HDR_SIZE ;
 int OCS_HW_SEND_FRAME_CAPABLE ;
 int OCS_SCSI_IO_ROLE_RESPONDER ;
 int TRUE ;
 scalar_t__ UINT64_MAX ;
 int be64dec (int ) ;
 int ocs_assert (TYPE_29__*,int) ;
 int ocs_be16toh (int ) ;
 scalar_t__ ocs_be32toh (int ) ;
 int ocs_dispatch_unsolicited_tmf (TYPE_6__*,scalar_t__,TYPE_5__*,scalar_t__) ;
 int ocs_get_flags_fcp_cmd (TYPE_8__*) ;
 int ocs_hw_get (int *,int ,int*) ;
 int ocs_hw_sequence_free (int *,TYPE_7__*) ;
 int ocs_log_err (TYPE_4__*,char*,...) ;
 int ocs_log_test (TYPE_4__*,char*,int) ;
 int ocs_populate_io_fcp_cmd (TYPE_6__*,TYPE_8__*,TYPE_10__*,int ) ;
 TYPE_6__* ocs_scsi_io_alloc (TYPE_5__*,int ) ;
 int ocs_scsi_recv_cmd (TYPE_6__*,scalar_t__,int ,int,int) ;
 int ocs_sframe_send_task_set_full_or_busy (TYPE_5__*,TYPE_7__*) ;
 scalar_t__ ocs_validate_fcp_cmd (TYPE_4__*,TYPE_7__*) ;

__attribute__((used)) static int32_t
ocs_dispatch_fcp_cmd(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
 ocs_t *ocs = node->ocs;
 fc_header_t *fchdr = seq->header->dma.virt;
 fcp_cmnd_iu_t *cmnd = ((void*)0);
 ocs_io_t *io = ((void*)0);
 fc_vm_header_t *vhdr;
 uint8_t df_ctl;
 uint64_t lun = UINT64_MAX;
 int32_t rc = 0;

 ocs_assert(seq->payload, -1);
 cmnd = seq->payload->dma.virt;


 if (ocs_validate_fcp_cmd(ocs, seq)) {
  return -1;
 }

 lun = CAM_EXTLUN_BYTE_SWIZZLE(be64dec(cmnd->fcp_lun));
 if (lun == UINT64_MAX) {
  return -1;
 }

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


 io->app_id = 0;
 df_ctl = fchdr->df_ctl;
 if (df_ctl & FC_DFCTL_DEVICE_HDR_16_MASK) {
  uint32_t vmhdr_offset = 0;

  if (df_ctl & FC_DFCTL_ESP_HDR_MASK) {
   vmhdr_offset += FC_DFCTL_ESP_HDR_SIZE;
   ocs_log_err(ocs, "ESP Header present. Fix ESP Size.\n");
  }

  if (df_ctl & FC_DFCTL_NETWORK_HDR_MASK) {
   vmhdr_offset += FC_DFCTL_NETWORK_HDR_SIZE;
  }
  vhdr = (fc_vm_header_t *) ((char *)fchdr + sizeof(fc_header_t) + vmhdr_offset);
  io->app_id = ocs_be32toh(vhdr->src_vmid);
 }


 ocs_populate_io_fcp_cmd(io, cmnd, fchdr, TRUE);

 if (cmnd->task_management_flags) {
  ocs_dispatch_unsolicited_tmf(io, cmnd->task_management_flags, node, lun);
 } else {
  uint32_t flags = ocs_get_flags_fcp_cmd(cmnd);




  ocs_scsi_recv_cmd(io, lun, cmnd->fcp_cdb,
      sizeof(cmnd->fcp_cdb) +
      (cmnd->additional_fcp_cdb_length * sizeof(uint32_t)),
      flags);
 }


 ocs_hw_sequence_free(&ocs->hw, seq);
 return 0;
}
