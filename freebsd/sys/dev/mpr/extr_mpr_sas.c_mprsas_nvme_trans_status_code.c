
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int sense_len; int sense_resid; int sense_data; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ csio; } ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int u8 ;
struct scsi_sense_data {int dummy; } ;
struct mpr_command {union ccb* cm_complete_data; } ;


 int CAM_AUTOSNS_VALID ;
 int MPI2_SCSI_STATUS_CHECK_CONDITION ;
 int MPI2_SCSI_STATUS_GOOD ;
 int MPI2_SCSI_STATUS_TASK_ABORTED ;
 int NVME_STATUS_GET_SC (int ) ;
 int NVME_STATUS_GET_SCT (int ) ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASCQ_FORMAT_COMMAND_FAILED ;
 int SCSI_ASCQ_INVALID_LUN_ID ;
 int SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED ;
 int SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED ;
 int SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED ;
 int SCSI_ASCQ_POWER_LOSS_EXPECTED ;
 int SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID ;
 int SCSI_ASC_FORMAT_COMMAND_FAILED ;
 int SCSI_ASC_ILLEGAL_BLOCK ;
 int SCSI_ASC_ILLEGAL_COMMAND ;
 int SCSI_ASC_INTERNAL_TARGET_FAILURE ;
 int SCSI_ASC_INVALID_CDB ;
 int SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED ;
 int SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED ;
 int SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED ;
 int SCSI_ASC_LUN_NOT_READY ;
 int SCSI_ASC_MISCOMPARE_DURING_VERIFY ;
 int SCSI_ASC_NO_SENSE ;
 int SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT ;
 int SCSI_ASC_UNRECOVERED_READ_ERROR ;
 int SCSI_ASC_WARNING ;
 int SSD_ELEM_NONE ;
 int SSD_KEY_ABORTED_COMMAND ;
 int SSD_KEY_HARDWARE_ERROR ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSD_KEY_MEDIUM_ERROR ;
 int SSD_KEY_MISCOMPARE ;
 int SSD_KEY_NOT_READY ;
 int SSD_KEY_NO_SENSE ;
 int SSD_TYPE_FIXED ;
 int scsi_set_sense_data (int *,int ,int,int,int,int,int ) ;

__attribute__((used)) static u8
mprsas_nvme_trans_status_code(uint16_t nvme_status,
    struct mpr_command *cm)
{
 u8 status = MPI2_SCSI_STATUS_GOOD;
 int skey, asc, ascq;
 union ccb *ccb = cm->cm_complete_data;
 int returned_sense_len;
 uint8_t sct, sc;

 sct = NVME_STATUS_GET_SCT(nvme_status);
 sc = NVME_STATUS_GET_SC(nvme_status);

 status = MPI2_SCSI_STATUS_CHECK_CONDITION;
 skey = SSD_KEY_ILLEGAL_REQUEST;
 asc = SCSI_ASC_NO_SENSE;
 ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;

 switch (sct) {
 case 152:
  switch (sc) {
  case 130:
   status = MPI2_SCSI_STATUS_GOOD;
   skey = SSD_KEY_NO_SENSE;
   asc = SCSI_ASC_NO_SENSE;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 134:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_ILLEGAL_REQUEST;
   asc = SCSI_ASC_ILLEGAL_COMMAND;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 137:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_ILLEGAL_REQUEST;
   asc = SCSI_ASC_INVALID_CDB;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 140:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MEDIUM_ERROR;
   asc = SCSI_ASC_NO_SENSE;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 147:
   status = MPI2_SCSI_STATUS_TASK_ABORTED;
   skey = SSD_KEY_ABORTED_COMMAND;
   asc = SCSI_ASC_WARNING;
   ascq = SCSI_ASCQ_POWER_LOSS_EXPECTED;
   break;
  case 138:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_HARDWARE_ERROR;
   asc = SCSI_ASC_INTERNAL_TARGET_FAILURE;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 150:
  case 146:
  case 149:
  case 148:
   status = MPI2_SCSI_STATUS_TASK_ABORTED;
   skey = SSD_KEY_ABORTED_COMMAND;
   asc = SCSI_ASC_NO_SENSE;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 135:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_ILLEGAL_REQUEST;
   asc = SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID;
   ascq = SCSI_ASCQ_INVALID_LUN_ID;
   break;
  case 133:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_ILLEGAL_REQUEST;
   asc = SCSI_ASC_ILLEGAL_BLOCK;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 143:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MEDIUM_ERROR;
   asc = SCSI_ASC_NO_SENSE;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 132:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_NOT_READY;
   asc = SCSI_ASC_LUN_NOT_READY;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  }
  break;
 case 153:
  switch (sc) {
  case 136:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_ILLEGAL_REQUEST;
   asc = SCSI_ASC_FORMAT_COMMAND_FAILED;
   ascq = SCSI_ASCQ_FORMAT_COMMAND_FAILED;
   break;
  case 141:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_ILLEGAL_REQUEST;
   asc = SCSI_ASC_INVALID_CDB;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  }
  break;
 case 151:
  switch (sc) {
  case 128:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MEDIUM_ERROR;
   asc = SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 129:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MEDIUM_ERROR;
   asc = SCSI_ASC_UNRECOVERED_READ_ERROR;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 139:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MEDIUM_ERROR;
   asc = SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED;
   ascq = SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED;
   break;
  case 144:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MEDIUM_ERROR;
   asc = SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED;
   ascq = SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED;
   break;
  case 131:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MEDIUM_ERROR;
   asc = SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED;
   ascq = SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED;
   break;
  case 142:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_MISCOMPARE;
   asc = SCSI_ASC_MISCOMPARE_DURING_VERIFY;
   ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
   break;
  case 145:
   status = MPI2_SCSI_STATUS_CHECK_CONDITION;
   skey = SSD_KEY_ILLEGAL_REQUEST;
   asc = SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID;
   ascq = SCSI_ASCQ_INVALID_LUN_ID;
   break;
  }
  break;
 }

 returned_sense_len = sizeof(struct scsi_sense_data);
 if (returned_sense_len < ccb->csio.sense_len)
  ccb->csio.sense_resid = ccb->csio.sense_len -
      returned_sense_len;
 else
  ccb->csio.sense_resid = 0;

 scsi_set_sense_data(&ccb->csio.sense_data, SSD_TYPE_FIXED,
     1, skey, asc, ascq, SSD_ELEM_NONE);
 ccb->ccb_h.status |= CAM_AUTOSNS_VALID;

 return status;
}
