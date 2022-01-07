
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_12__ {int dif_oper; int dif; } ;
struct TYPE_11__ {int wire_len; int scsi_tgt_cb_arg; scalar_t__ auto_resp; int (* scsi_tgt_cb ) (TYPE_1__*,int ,int,int ) ;int transferred; struct TYPE_11__* ocs; TYPE_4__ hw_dif; } ;
typedef TYPE_1__ ocs_t ;
typedef int ocs_scsi_io_status_e ;
typedef int (* ocs_scsi_io_cb_t ) (TYPE_1__*,int ,int,int ) ;
typedef int ocs_remote_node_t ;
typedef TYPE_1__ ocs_io_t ;
typedef int ocs_hw_io_t ;
typedef TYPE_4__ ocs_hw_dif_info_t ;
typedef int int32_t ;


 int OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW ;
 int OCS_SCSI_IO_CMPL ;
 int OCS_SCSI_IO_CMPL_RSP_SENT ;
 int OCS_SCSI_STATUS_ABORTED ;
 int OCS_SCSI_STATUS_DIF_APP_TAG_ERROR ;
 int OCS_SCSI_STATUS_DIF_GUARD_ERROR ;
 int OCS_SCSI_STATUS_DIF_REF_TAG_ERROR ;
 int OCS_SCSI_STATUS_ERROR ;
 int OCS_SCSI_STATUS_GOOD ;
 int OCS_SCSI_STATUS_NEXUS_LOST ;
 int OCS_SCSI_STATUS_NO_IO ;
 int OCS_SCSI_STATUS_SHUTDOWN ;
 int OCS_SCSI_STATUS_TIMEDOUT_AND_ABORTED ;
 int SLI4_DIF_PASS_THROUGH ;
 int SLI4_FC_DI_ERROR_AE ;
 int SLI4_FC_DI_ERROR_EDIR ;
 int SLI4_FC_DI_ERROR_GE ;
 int SLI4_FC_DI_ERROR_RE ;
 int SLI4_FC_DI_ERROR_TDPV ;
 int ocs_assert (TYPE_1__*) ;
 int ocs_scsi_check_pending (TYPE_1__*) ;
 int ocs_scsi_dif_check_unknown (TYPE_1__*,int,int,int) ;
 int ocs_scsi_dif_guard_is_crc (int,TYPE_4__*) ;
 int ocs_scsi_io_free_ovfl (TYPE_1__*) ;
 int scsi_io_trace (TYPE_1__*,char*,int ,int) ;

__attribute__((used)) static void
ocs_target_io_cb(ocs_hw_io_t *hio, ocs_remote_node_t *rnode, uint32_t length,
 int32_t status, uint32_t ext_status, void *app)
{
 ocs_io_t *io = app;
 ocs_t *ocs;
 ocs_scsi_io_status_e scsi_status = OCS_SCSI_STATUS_GOOD;
 uint16_t additional_length;
 uint8_t edir;
 uint8_t tdpv;
 ocs_hw_dif_info_t *dif_info = &io->hw_dif;
 int is_crc;

 ocs_assert(io);

 scsi_io_trace(io, "status x%x ext_status x%x\n", status, ext_status);

 ocs = io->ocs;
 ocs_assert(ocs);

 ocs_scsi_io_free_ovfl(io);

 io->transferred += length;


 if (io->scsi_tgt_cb) {
  ocs_scsi_io_cb_t cb = io->scsi_tgt_cb;
  uint32_t flags = 0;


  io->scsi_tgt_cb = ((void*)0);




  if ((status == 0) && (io->auto_resp))
   flags |= OCS_SCSI_IO_CMPL_RSP_SENT;
  else
   flags |= OCS_SCSI_IO_CMPL;

  switch (status) {
  case 129:
   scsi_status = OCS_SCSI_STATUS_GOOD;
   break;
  case 132:
   if (ext_status & SLI4_FC_DI_ERROR_GE) {
    scsi_status = OCS_SCSI_STATUS_DIF_GUARD_ERROR;
   } else if (ext_status & SLI4_FC_DI_ERROR_AE) {
    scsi_status = OCS_SCSI_STATUS_DIF_APP_TAG_ERROR;
   } else if (ext_status & SLI4_FC_DI_ERROR_RE) {
    scsi_status = OCS_SCSI_STATUS_DIF_REF_TAG_ERROR;
   } else {
    additional_length = ((ext_status >> 16) & 0xFFFF);


    edir = !!(ext_status & SLI4_FC_DI_ERROR_EDIR);
    tdpv = !!(ext_status & SLI4_FC_DI_ERROR_TDPV);

    is_crc = ocs_scsi_dif_guard_is_crc(edir, dif_info);

    if (edir == 0) {

     scsi_status = ocs_scsi_dif_check_unknown(io, 0, io->wire_len, is_crc);
    } else {
     if ((additional_length != 0) && (tdpv != 0) &&
         (dif_info->dif == SLI4_DIF_PASS_THROUGH) && (dif_info->dif_oper != OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW) ) {
      scsi_status = ocs_scsi_dif_check_unknown(io, length, additional_length, is_crc);
     } else {

      scsi_status = OCS_SCSI_STATUS_DIF_GUARD_ERROR;
     }
    }
   }
   break;
  case 131:
   switch (ext_status) {
   case 135:
   case 136:
    scsi_status = OCS_SCSI_STATUS_ABORTED;
    break;
   case 134:
    scsi_status = OCS_SCSI_STATUS_NEXUS_LOST;
    break;
   case 133:
    scsi_status = OCS_SCSI_STATUS_NO_IO;
    break;
   default:

    scsi_status = OCS_SCSI_STATUS_ERROR;
    break;
   }
   break;

  case 128:

   scsi_status = OCS_SCSI_STATUS_TIMEDOUT_AND_ABORTED;
   break;

  case 130:

   scsi_status = OCS_SCSI_STATUS_SHUTDOWN;
   break;

  default:
   scsi_status = OCS_SCSI_STATUS_ERROR;
   break;
  }

  cb(io, scsi_status, flags, io->scsi_tgt_cb_arg);

 }
 ocs_scsi_check_pending(ocs);
}
