
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int status; int path; } ;
struct TYPE_14__ {size_t target_id; int flags; } ;
struct TYPE_10__ {scalar_t__* cdb_bytes; scalar_t__* cdb_ptr; } ;
struct ccb_scsiio {int resid; int sense_len; int* data_ptr; TYPE_5__ ccb_h; int sense_data; int sense_resid; int scsi_status; TYPE_1__ cdb_io; } ;
union ccb {TYPE_6__ ccb_h; struct ccb_scsiio csio; } ;
typedef scalar_t__ u8 ;
typedef int u16 ;
typedef size_t target_id_t ;
struct scsi_vpd_supported_page_list {int* list; int length; } ;
struct scsi_sense_data {int dummy; } ;
struct mprsas_target {scalar_t__ is_nvme; int supports_SSU; } ;
struct mprsas_softc {int flags; struct mprsas_target* targets; int sim; } ;
struct mpr_softc {int mpr_flags; TYPE_2__* mapping_table; int control_TLR; int SSU_refcount; scalar_t__ SSU_started; int buffer_dmat; struct mprsas_softc* sassc; int mpr_mtx; } ;
struct TYPE_12__ {int SMID; } ;
struct TYPE_13__ {TYPE_3__ Default; } ;
struct mpr_command {int cm_flags; scalar_t__ cm_state; int cm_length; TYPE_9__* cm_targ; TYPE_4__ cm_desc; int cm_sense; int * cm_reply; int cm_ccb; int cm_dmamap; int * cm_data; union ccb* cm_complete_data; int cm_callout; } ;
struct TYPE_17__ {int devinfo; int * tm; int timedout_commands; int commands; int outstanding; int completed; } ;
struct TYPE_16__ {int SCSIState; int TransferCount; int SCSIStatus; int IOCLogInfo; int IOCStatus; int SenseCount; int ResponseInfo; } ;
struct TYPE_11__ {scalar_t__ TLR_bits; int device_info; } ;
typedef TYPE_7__ MPI2_SCSI_IO_REPLY ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CAM_AUTOSENSE_FAIL ;
 int CAM_AUTOSNS_VALID ;
 int CAM_CDB_POINTER ;
 scalar_t__ CAM_CMD_TIMEOUT ;
 int CAM_DATA_MASK ;
 scalar_t__ CAM_DATA_RUN_ERR ;
 int CAM_DATA_VADDR ;
 scalar_t__ CAM_DEV_NOT_THERE ;
 int CAM_DEV_QFRZN ;
 int CAM_RELEASE_SIMQ ;
 scalar_t__ CAM_REQUEUE_REQ ;
 scalar_t__ CAM_REQ_ABORTED ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_CMP_ERR ;
 scalar_t__ CAM_REQ_INPROG ;
 scalar_t__ CAM_SCSI_BUS_RESET ;
 scalar_t__ CAM_SCSI_STATUS_ERROR ;
 int CAM_SIM_QUEUED ;
 int CAM_STATUS_MASK ;
 scalar_t__ CAM_UNREC_HBA_ERROR ;
 scalar_t__ INQUIRY ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MIN (int ,int) ;






 int MPI2_IOCSTATUS_MASK ;
 int MPI2_SAS_DEVICE_INFO_END_DEVICE ;
 int MPI2_SAS_DEVICE_INFO_MASK_DEVICE_TYPE ;
 int MPI2_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPI2_SAS_DEVICE_INFO_SSP_TARGET ;
 int MPI2_SCSIIO_CONTROL_NO_TLR ;
 int MPI2_SCSIIO_CONTROL_TLR_ON ;
 int MPI2_SCSI_RI_MASK_REASONCODE ;
 int MPI2_SCSI_STATE_AUTOSENSE_FAILED ;
 int MPI2_SCSI_STATE_AUTOSENSE_VALID ;
 int MPI2_SCSI_STATE_NO_SCSI_STATUS ;
 int MPI2_SCSI_STATE_RESPONSE_INFO_VALID ;
 int MPI2_SCSI_STATE_TERMINATED ;
 int MPI2_SCSI_STATUS_COMMAND_TERMINATED ;
 int MPI2_SCSI_STATUS_GOOD ;
 int MPI2_SCSI_STATUS_TASK_ABORTED ;
 int MPRSAS_QUEUE_FROZEN ;
 int MPR_CM_FLAGS_DATAIN ;
 int MPR_CM_FLAGS_DATAOUT ;
 int MPR_CM_FLAGS_ERROR_MASK ;
 int MPR_CM_FLAGS_ON_RECOVERY ;
 int MPR_CM_FLAGS_TIMEDOUT ;
 scalar_t__ MPR_CM_STATE_BUSY ;
 int MPR_FLAGS_DIAGRESET ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 int MPR_INFO ;
 int MPR_RECOVERY ;
 int MPR_SCSI_RI_INVALID_FRAME ;
 int MPR_TRACE ;
 int MPR_XINFO ;
 int SCSI_STATUS_OK ;
 scalar_t__ SI_EVPD ;
 scalar_t__ START_STOP_UNIT ;
 scalar_t__ SVPD_SUPPORTED_PAGE_LIST ;
 int TAILQ_REMOVE (int *,struct mpr_command*,int ) ;
 int TRUE ;
 int T_DIRECT ;
 int T_SEQUENTIAL ;
 scalar_t__ UNMAP ;
 int bcopy (int ,int *,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (int *,int) ;
 int callout_stop (int *) ;
 int cm_link ;
 int cm_recovery ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int min (int,int) ;
 int mpr_describe_table (int ,int) ;
 int mpr_dprint (struct mpr_softc*,int ,char*,...) ;
 int mpr_free_command (struct mpr_softc*,struct mpr_command*) ;
 int mpr_iocstatus_string ;
 int mpr_print_scsiio_cmd (struct mpr_softc*,struct mpr_command*) ;
 int mpr_sc_failed_io_info (struct mpr_softc*,struct ccb_scsiio*,TYPE_7__*,TYPE_9__*) ;
 int mprsas_complete_nvme_unmap (struct mpr_softc*,struct mpr_command*) ;
 scalar_t__ mprsas_get_ccbstatus (union ccb*) ;
 int mprsas_log_command (struct mpr_command*,int ,char*,...) ;
 int mprsas_set_ccbstatus (union ccb*,scalar_t__) ;
 int mtx_assert (int *,int ) ;
 scalar_t__* scsiio_cdb_ptr (struct ccb_scsiio*) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
mprsas_scsiio_complete(struct mpr_softc *sc, struct mpr_command *cm)
{
 MPI2_SCSI_IO_REPLY *rep;
 union ccb *ccb;
 struct ccb_scsiio *csio;
 struct mprsas_softc *sassc;
 struct scsi_vpd_supported_page_list *vpd_list = ((void*)0);
 u8 *TLR_bits, TLR_on, *scsi_cdb;
 int dir = 0, i;
 u16 alloc_len;
 struct mprsas_target *target;
 target_id_t target_id;

 MPR_FUNCTRACE(sc);
 mpr_dprint(sc, MPR_TRACE,
     "cm %p SMID %u ccb %p reply %p outstanding %u\n", cm,
     cm->cm_desc.Default.SMID, cm->cm_ccb, cm->cm_reply,
     cm->cm_targ->outstanding);

 callout_stop(&cm->cm_callout);
 mtx_assert(&sc->mpr_mtx, MA_OWNED);

 sassc = sc->sassc;
 ccb = cm->cm_complete_data;
 csio = &ccb->csio;
 target_id = csio->ccb_h.target_id;
 rep = (MPI2_SCSI_IO_REPLY *)cm->cm_reply;





 if (cm->cm_data != ((void*)0)) {
  if (cm->cm_flags & MPR_CM_FLAGS_DATAIN)
   dir = BUS_DMASYNC_POSTREAD;
  else if (cm->cm_flags & MPR_CM_FLAGS_DATAOUT)
   dir = BUS_DMASYNC_POSTWRITE;
  bus_dmamap_sync(sc->buffer_dmat, cm->cm_dmamap, dir);
  bus_dmamap_unload(sc->buffer_dmat, cm->cm_dmamap);
 }

 cm->cm_targ->completed++;
 cm->cm_targ->outstanding--;
 TAILQ_REMOVE(&cm->cm_targ->commands, cm, cm_link);
 ccb->ccb_h.status &= ~(CAM_STATUS_MASK | CAM_SIM_QUEUED);

 if (cm->cm_flags & MPR_CM_FLAGS_ON_RECOVERY) {
  TAILQ_REMOVE(&cm->cm_targ->timedout_commands, cm, cm_recovery);
  KASSERT(cm->cm_state == MPR_CM_STATE_BUSY,
      ("Not busy for CM_FLAGS_TIMEDOUT: %d\n", cm->cm_state));
  cm->cm_flags &= ~MPR_CM_FLAGS_ON_RECOVERY;
  if (cm->cm_reply != ((void*)0))
   mprsas_log_command(cm, MPR_RECOVERY,
       "completed timedout cm %p ccb %p during recovery "
       "ioc %x scsi %x state %x xfer %u\n", cm, cm->cm_ccb,
       le16toh(rep->IOCStatus), rep->SCSIStatus,
       rep->SCSIState, le32toh(rep->TransferCount));
  else
   mprsas_log_command(cm, MPR_RECOVERY,
       "completed timedout cm %p ccb %p during recovery\n",
       cm, cm->cm_ccb);
 } else if (cm->cm_targ->tm != ((void*)0)) {
  if (cm->cm_reply != ((void*)0))
   mprsas_log_command(cm, MPR_RECOVERY,
       "completed cm %p ccb %p during recovery "
       "ioc %x scsi %x state %x xfer %u\n",
       cm, cm->cm_ccb, le16toh(rep->IOCStatus),
       rep->SCSIStatus, rep->SCSIState,
       le32toh(rep->TransferCount));
  else
   mprsas_log_command(cm, MPR_RECOVERY,
       "completed cm %p ccb %p during recovery\n",
       cm, cm->cm_ccb);
 } else if ((sc->mpr_flags & MPR_FLAGS_DIAGRESET) != 0) {
  mprsas_log_command(cm, MPR_RECOVERY,
      "reset completed cm %p ccb %p\n", cm, cm->cm_ccb);
 }

 if ((cm->cm_flags & MPR_CM_FLAGS_ERROR_MASK) != 0) {
  mprsas_set_ccbstatus(ccb, CAM_REQUEUE_REQ);
  if ((sassc->flags & MPRSAS_QUEUE_FROZEN) == 0) {
   xpt_freeze_simq(sassc->sim, 1);
   sassc->flags |= MPRSAS_QUEUE_FROZEN;
   mpr_dprint(sc, MPR_XINFO, "Error sending command, "
       "freezing SIM queue\n");
  }
 }
 if (csio->ccb_h.flags & CAM_CDB_POINTER)
  scsi_cdb = csio->cdb_io.cdb_ptr;
 else
  scsi_cdb = csio->cdb_io.cdb_bytes;
 if (sc->SSU_started && (scsi_cdb[0] == START_STOP_UNIT)) {
  mpr_dprint(sc, MPR_INFO, "Decrementing SSU count.\n");
  sc->SSU_refcount--;
 }


 if (cm->cm_reply == ((void*)0)) {
  if (mprsas_get_ccbstatus(ccb) == CAM_REQ_INPROG) {
   if ((sc->mpr_flags & MPR_FLAGS_DIAGRESET) != 0)
    mprsas_set_ccbstatus(ccb, CAM_SCSI_BUS_RESET);
   else {
    mprsas_set_ccbstatus(ccb, CAM_REQ_CMP);
    csio->scsi_status = SCSI_STATUS_OK;
   }
   if (sassc->flags & MPRSAS_QUEUE_FROZEN) {
    ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
    sassc->flags &= ~MPRSAS_QUEUE_FROZEN;
    mpr_dprint(sc, MPR_XINFO,
        "Unfreezing SIM queue\n");
   }
  }






  if (mprsas_get_ccbstatus(ccb) != CAM_REQ_CMP) {





   ccb->ccb_h.status |= CAM_DEV_QFRZN;
   xpt_freeze_devq(ccb->ccb_h.path, 1);
  }
  mpr_free_command(sc, cm);
  xpt_done(ccb);
  return;
 }

 target = &sassc->targets[target_id];
 if (scsi_cdb[0] == UNMAP &&
     target->is_nvme &&
     (csio->ccb_h.flags & CAM_DATA_MASK) == CAM_DATA_VADDR) {
  rep->SCSIStatus = mprsas_complete_nvme_unmap(sc, cm);
  csio->scsi_status = rep->SCSIStatus;
 }

 mprsas_log_command(cm, MPR_XINFO,
     "ioc %x scsi %x state %x xfer %u\n",
     le16toh(rep->IOCStatus), rep->SCSIStatus, rep->SCSIState,
     le32toh(rep->TransferCount));

 switch (le16toh(rep->IOCStatus) & MPI2_IOCSTATUS_MASK) {
 case 139:
  csio->resid = cm->cm_length - le32toh(rep->TransferCount);

 case 128:
 case 132:
  if ((le16toh(rep->IOCStatus) & MPI2_IOCSTATUS_MASK) ==
      132)
   mprsas_log_command(cm, MPR_XINFO, "recovered error\n");


  if (rep->SCSIState & (MPI2_SCSI_STATE_NO_SCSI_STATUS |
      MPI2_SCSI_STATE_TERMINATED)) {
   mprsas_set_ccbstatus(ccb, CAM_REQ_CMP_ERR);
   break;
  }





  if (rep->SCSIState & MPI2_SCSI_STATE_AUTOSENSE_FAILED) {
   mprsas_set_ccbstatus(ccb, CAM_AUTOSENSE_FAIL);
   break;
  }






  if ((rep->SCSIState & MPI2_SCSI_STATE_RESPONSE_INFO_VALID) &&
      ((le32toh(rep->ResponseInfo) & MPI2_SCSI_RI_MASK_REASONCODE)
      == MPR_SCSI_RI_INVALID_FRAME)) {
   sc->mapping_table[target_id].TLR_bits =
       (u8)MPI2_SCSIIO_CONTROL_NO_TLR;
  }







  if ((rep->SCSIStatus == MPI2_SCSI_STATUS_COMMAND_TERMINATED) ||
      (rep->SCSIStatus == MPI2_SCSI_STATUS_TASK_ABORTED)) {
   mprsas_set_ccbstatus(ccb, CAM_REQ_ABORTED);
   break;
  }


  csio->scsi_status = rep->SCSIStatus;
  if (rep->SCSIStatus == MPI2_SCSI_STATUS_GOOD)
   mprsas_set_ccbstatus(ccb, CAM_REQ_CMP);
  else
   mprsas_set_ccbstatus(ccb, CAM_SCSI_STATUS_ERROR);

  if (rep->SCSIState & MPI2_SCSI_STATE_AUTOSENSE_VALID) {
   int sense_len, returned_sense_len;

   returned_sense_len = min(le32toh(rep->SenseCount),
       sizeof(struct scsi_sense_data));
   if (returned_sense_len < csio->sense_len)
    csio->sense_resid = csio->sense_len -
        returned_sense_len;
   else
    csio->sense_resid = 0;

   sense_len = min(returned_sense_len,
       csio->sense_len - csio->sense_resid);
   bzero(&csio->sense_data, sizeof(csio->sense_data));
   bcopy(cm->cm_sense, &csio->sense_data, sense_len);
   ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
  }
  if ((scsi_cdb[0] == INQUIRY) &&
      (scsi_cdb[1] & SI_EVPD) &&
      (scsi_cdb[2] == SVPD_SUPPORTED_PAGE_LIST) &&
      ((csio->ccb_h.flags & CAM_DATA_MASK) == CAM_DATA_VADDR) &&
      (csio->data_ptr != ((void*)0)) &&
      ((csio->data_ptr[0] & 0x1f) == T_SEQUENTIAL) &&
      (sc->control_TLR) &&
      (sc->mapping_table[target_id].device_info &
      MPI2_SAS_DEVICE_INFO_SSP_TARGET)) {
   vpd_list = (struct scsi_vpd_supported_page_list *)
       csio->data_ptr;
   TLR_bits = &sc->mapping_table[target_id].TLR_bits;
   *TLR_bits = (u8)MPI2_SCSIIO_CONTROL_NO_TLR;
   TLR_on = (u8)MPI2_SCSIIO_CONTROL_TLR_ON;
   alloc_len = ((u16)scsi_cdb[3] << 8) + scsi_cdb[4];
   alloc_len -= csio->resid;
   for (i = 0; i < MIN(vpd_list->length, alloc_len); i++) {
    if (vpd_list->list[i] == 0x90) {
     *TLR_bits = TLR_on;
     break;
    }
   }
  }






  if ((scsi_cdb[0] == INQUIRY) &&
      (csio->data_ptr != ((void*)0)) &&
      ((csio->data_ptr[0] & 0x1f) == T_DIRECT) &&
      (sc->mapping_table[target_id].device_info &
      MPI2_SAS_DEVICE_INFO_SATA_DEVICE) &&
      ((sc->mapping_table[target_id].device_info &
      MPI2_SAS_DEVICE_INFO_MASK_DEVICE_TYPE) ==
      MPI2_SAS_DEVICE_INFO_END_DEVICE)) {
   target = &sassc->targets[target_id];
   target->supports_SSU = TRUE;
   mpr_dprint(sc, MPR_XINFO, "Target %d supports SSU\n",
       target_id);
  }
  break;
 case 136:
 case 138:






  if (cm->cm_targ->devinfo == 0)
   mprsas_set_ccbstatus(ccb, CAM_REQ_CMP);
  else
   mprsas_set_ccbstatus(ccb, CAM_DEV_NOT_THERE);
  break;
 case 144:
  mpr_print_scsiio_cmd(sc, cm);
  mprsas_set_ccbstatus(ccb, CAM_UNREC_HBA_ERROR);
  break;
 case 129:
  if (cm->cm_flags & MPR_CM_FLAGS_TIMEDOUT)
   mprsas_set_ccbstatus(ccb, CAM_CMD_TIMEOUT);
  else
   mprsas_set_ccbstatus(ccb, CAM_REQ_ABORTED);
  break;
 case 140:

  csio->resid = 0;
  mprsas_set_ccbstatus(ccb, CAM_DATA_RUN_ERR);
  break;
 case 135:
 case 137:
  mprsas_set_ccbstatus(ccb, CAM_REQ_CMP_ERR);
  mpr_dprint(sc, MPR_INFO,
      "Controller reported %s tgt %u SMID %u loginfo %x\n",
      mpr_describe_table(mpr_iocstatus_string,
      le16toh(rep->IOCStatus) & MPI2_IOCSTATUS_MASK),
      target_id, cm->cm_desc.Default.SMID,
      le32toh(rep->IOCLogInfo));
  mpr_dprint(sc, MPR_XINFO,
      "SCSIStatus %x SCSIState %x xfercount %u\n",
      rep->SCSIStatus, rep->SCSIState,
      le32toh(rep->TransferCount));
  break;
 case 145:
 case 147:
 case 142:
 case 146:
 case 143:
 case 141:
 case 134:
 case 133:
 case 131:
 case 130:
 default:
  mprsas_log_command(cm, MPR_XINFO,
      "completed ioc %x loginfo %x scsi %x state %x xfer %u\n",
      le16toh(rep->IOCStatus), le32toh(rep->IOCLogInfo),
      rep->SCSIStatus, rep->SCSIState,
      le32toh(rep->TransferCount));
  csio->resid = cm->cm_length;

  if (scsi_cdb[0] == UNMAP &&
      target->is_nvme &&
      (csio->ccb_h.flags & CAM_DATA_MASK) == CAM_DATA_VADDR)
   mprsas_set_ccbstatus(ccb, CAM_REQ_CMP);
  else
   mprsas_set_ccbstatus(ccb, CAM_REQ_CMP_ERR);

  break;
 }

 mpr_sc_failed_io_info(sc, csio, rep, cm->cm_targ);

 if (sassc->flags & MPRSAS_QUEUE_FROZEN) {
  ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
  sassc->flags &= ~MPRSAS_QUEUE_FROZEN;
  mpr_dprint(sc, MPR_XINFO, "Command completed, unfreezing SIM "
      "queue\n");
 }

 if (mprsas_get_ccbstatus(ccb) != CAM_REQ_CMP) {
  ccb->ccb_h.status |= CAM_DEV_QFRZN;
  xpt_freeze_devq(ccb->ccb_h.path, 1);
 }

 mpr_free_command(sc, cm);
 xpt_done(ccb);
}
