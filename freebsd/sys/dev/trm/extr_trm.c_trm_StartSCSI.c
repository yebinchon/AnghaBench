
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ccb_scsiio {int sense_len; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int8_t ;
typedef int u_int16_t ;
struct TYPE_9__ {int AdaptSCSIID; TYPE_2__* pActiveDCB; } ;
struct TYPE_8__ {int TargetID; int SyncPeriod; int SyncOffset; int IdentifyMsg; int SyncMode; TYPE_1__* pActiveSRB; } ;
struct TYPE_7__ {scalar_t__* CmdBlock; int SRBFlag; int TagNumber; int ScsiCmdLen; int ScsiPhase; void* SRBState; union ccb* pccb; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;
typedef TYPE_3__* PACB ;


 int AUTO_REQSENSE ;
 int DO_CLRFIFO ;
 int DO_DATALATCH ;
 int DO_HWRESELECT ;
 int EN_TAG_QUEUING ;
 scalar_t__ INQUIRY ;
 int MSG_SIMPLE_QTAG ;
 int PH_BUS_FREE ;
 int REQUEST_SENSE ;
 int SCMD_SEL_ATN ;
 int SCMD_SEL_ATN3 ;
 int SCMD_SEL_ATNSTOP ;
 int SCSIINTERRUPT ;
 int SCSI_NOP1 ;
 void* SRB_MSGOUT ;
 void* SRB_READY ;
 void* SRB_START_ ;
 int SYNC_NEGO_DONE ;
 int SYNC_NEGO_ENABLE ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_FIFO ;
 int TRMREG_SCSI_HOSTID ;
 int TRMREG_SCSI_OFFSET ;
 int TRMREG_SCSI_STATUS ;
 int TRMREG_SCSI_SYNC ;
 int TRMREG_SCSI_TARGETID ;
 int WIDE_NEGO_DONE ;
 int WIDE_NEGO_ENABLE ;
 int trm_reg_read16 (int ) ;
 int trm_reg_write16 (int,int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static u_int16_t
trm_StartSCSI(PACB pACB, PDCB pDCB, PSRB pSRB)
{
 u_int16_t return_code;
 u_int8_t scsicommand, i,command,identify_message;
 u_int8_t * ptr;
 union ccb *pccb;
 struct ccb_scsiio *pcsio;

 pccb = pSRB->pccb;
 pcsio = &pccb->csio;

 trm_reg_write8(pACB->AdaptSCSIID, TRMREG_SCSI_HOSTID);
 trm_reg_write8(pDCB->TargetID, TRMREG_SCSI_TARGETID);
 trm_reg_write8(pDCB->SyncPeriod, TRMREG_SCSI_SYNC);
 trm_reg_write8(pDCB->SyncOffset, TRMREG_SCSI_OFFSET);
 pSRB->ScsiPhase = PH_BUS_FREE;

 trm_reg_write16(DO_CLRFIFO, TRMREG_SCSI_CONTROL);

 identify_message = pDCB->IdentifyMsg;

    if ((pSRB->CmdBlock[0] == INQUIRY) ||
     (pSRB->CmdBlock[0] == REQUEST_SENSE) ||
     (pSRB->SRBFlag & AUTO_REQSENSE)) {
  if (((pDCB->SyncMode & WIDE_NEGO_ENABLE) &&
        !(pDCB->SyncMode & WIDE_NEGO_DONE))
  || ((pDCB->SyncMode & SYNC_NEGO_ENABLE) &&
    !(pDCB->SyncMode & SYNC_NEGO_DONE))) {
   if (!(pDCB->IdentifyMsg & 7) ||
       (pSRB->CmdBlock[0] != INQUIRY)) {
    scsicommand = SCMD_SEL_ATNSTOP;
    pSRB->SRBState = SRB_MSGOUT;
    goto polling;
   }
  }



  trm_reg_write8((identify_message & 0xBF) ,TRMREG_SCSI_FIFO);
  scsicommand = SCMD_SEL_ATN;
  pSRB->SRBState = SRB_START_;
 } else {




  trm_reg_write8(identify_message,TRMREG_SCSI_FIFO);
  scsicommand = SCMD_SEL_ATN;
  pSRB->SRBState = SRB_START_;
  if (pDCB->SyncMode & EN_TAG_QUEUING) {

    trm_reg_write8(MSG_SIMPLE_QTAG, TRMREG_SCSI_FIFO);
   trm_reg_write8(pSRB->TagNumber, TRMREG_SCSI_FIFO);
   scsicommand = SCMD_SEL_ATN3;
  }
 }
polling:



    if (pSRB->SRBFlag & AUTO_REQSENSE) {
  trm_reg_write8(REQUEST_SENSE, TRMREG_SCSI_FIFO);
  trm_reg_write8((pDCB->IdentifyMsg << 5), TRMREG_SCSI_FIFO);
  trm_reg_write8(0, TRMREG_SCSI_FIFO);
  trm_reg_write8(0, TRMREG_SCSI_FIFO);
  trm_reg_write8(pcsio->sense_len, TRMREG_SCSI_FIFO);
  trm_reg_write8(0, TRMREG_SCSI_FIFO);
 } else {
  ptr = (u_int8_t *) pSRB->CmdBlock;
  for (i = 0; i < pSRB->ScsiCmdLen ; i++) {
   command = *ptr++;
   trm_reg_write8(command,TRMREG_SCSI_FIFO);
  }
 }
 if (trm_reg_read16(TRMREG_SCSI_STATUS) & SCSIINTERRUPT) {






  pSRB->SRBState = SRB_READY;
  return_code = 1;
 } else {





  pSRB->ScsiPhase = SCSI_NOP1;
  pACB->pActiveDCB = pDCB;
  pDCB->pActiveSRB = pSRB;
  return_code = 0;
  trm_reg_write16(DO_DATALATCH | DO_HWRESELECT,
      TRMREG_SCSI_CONTROL);



  trm_reg_write8(scsicommand,TRMREG_SCSI_COMMAND);
 }
 return (return_code);
}
