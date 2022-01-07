
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int16_t ;
struct TYPE_8__ {int AdaptType; TYPE_2__* pActiveDCB; } ;
struct TYPE_7__ {int DCBFlag; int SyncMode; int IdentifyMsg; int MaxNegoPeriod; } ;
struct TYPE_6__ {int SRBState; scalar_t__ MsgCnt; scalar_t__* MsgOutBuf; scalar_t__* CmdBlock; int SRBFlag; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;
typedef TYPE_3__* PACB ;


 int ABORT_DEV_ ;
 int AUTO_REQSENSE ;
 int DO_CLRFIFO ;
 int DO_DATALATCH ;
 int EN_ATN_STOP ;
 scalar_t__ INQUIRY ;
 scalar_t__ MSG_ABORT ;
 int MSG_EXTENDED ;
 scalar_t__ REQUEST_SENSE ;
 int SCMD_FIFO_OUT ;
 int SRB_ABORT_SENT ;
 int SRB_DO_SYNC_NEGO ;
 int SRB_DO_WIDE_NEGO ;
 int SRB_MSGOUT ;
 int SYNC_NEGO_DONE ;
 int SYNC_NEGO_ENABLE ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_FIFO ;
 int WIDE_NEGO_DONE ;
 int WIDE_NEGO_ENABLE ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
trm_MsgOutPhase1(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{
 u_int8_t bval;
 u_int16_t i, cnt;
 u_int8_t * ptr;
 PDCB pDCB;

 trm_reg_write16(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
 pDCB = pACB->pActiveDCB;
 if (!(pSRB->SRBState & SRB_MSGOUT)) {
  cnt = pSRB->MsgCnt;
  if (cnt) {
   ptr = (u_int8_t *) pSRB->MsgOutBuf;
   for (i = 0; i < cnt; i++) {
    trm_reg_write8(*ptr, TRMREG_SCSI_FIFO);
    ptr++;
   }
   pSRB->MsgCnt = 0;
   if ((pDCB->DCBFlag & ABORT_DEV_) &&
       (pSRB->MsgOutBuf[0] == MSG_ABORT)) {
    pSRB->SRBState = SRB_ABORT_SENT;
   }
  } else {
   bval = MSG_ABORT;
   if ((pSRB->CmdBlock[0] == INQUIRY) ||
     (pSRB->CmdBlock[0] == REQUEST_SENSE) ||
     (pSRB->SRBFlag & AUTO_REQSENSE)) {
    if (pDCB->SyncMode & SYNC_NEGO_ENABLE) {
     goto mop1;
    }
   }
   trm_reg_write8(bval, TRMREG_SCSI_FIFO);
  }
 } else {
mop1:
  if (!(pSRB->SRBState & SRB_DO_WIDE_NEGO)
      && (pDCB->SyncMode & WIDE_NEGO_ENABLE)) {



   pDCB->SyncMode &= ~(SYNC_NEGO_DONE | EN_ATN_STOP);
   trm_reg_write8((pDCB->IdentifyMsg & 0xBF),
       TRMREG_SCSI_FIFO);
   trm_reg_write8(MSG_EXTENDED,TRMREG_SCSI_FIFO);

   trm_reg_write8(2,TRMREG_SCSI_FIFO);

   trm_reg_write8(3,TRMREG_SCSI_FIFO);

   trm_reg_write8(1,TRMREG_SCSI_FIFO);

   pSRB->SRBState |= SRB_DO_WIDE_NEGO;
  } else if (!(pSRB->SRBState & SRB_DO_SYNC_NEGO)
      && (pDCB->SyncMode & SYNC_NEGO_ENABLE)) {



   if (!(pDCB->SyncMode & WIDE_NEGO_DONE))
    trm_reg_write8((pDCB->IdentifyMsg & 0xBF),
      TRMREG_SCSI_FIFO);
   trm_reg_write8(MSG_EXTENDED,TRMREG_SCSI_FIFO);

   trm_reg_write8(3,TRMREG_SCSI_FIFO);

   trm_reg_write8(1,TRMREG_SCSI_FIFO);

   trm_reg_write8(pDCB->MaxNegoPeriod,TRMREG_SCSI_FIFO);

   trm_reg_write8((pACB->AdaptType == 1) ? 31 : 15,
       TRMREG_SCSI_FIFO);

   pSRB->SRBState |= SRB_DO_SYNC_NEGO;
  }
 }
 trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




 trm_reg_write8(SCMD_FIFO_OUT, TRMREG_SCSI_COMMAND);
}
