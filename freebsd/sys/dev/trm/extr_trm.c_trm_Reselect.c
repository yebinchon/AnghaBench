
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
struct TYPE_9__ {int SRBState; int ScsiPhase; } ;
struct TYPE_11__ {int AdaptSCSIID; TYPE_1__ TmpSRB; TYPE_2__* pActiveDCB; TYPE_2__* pLinkDCB; } ;
struct TYPE_10__ {int SyncMode; int DCBFlag; int SyncOffset; int SyncPeriod; TYPE_1__* pActiveSRB; struct TYPE_10__* pNextDCB; int TargetID; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;
typedef TYPE_3__* PACB ;


 int ABORT_DEV_ ;
 int DO_DATALATCH ;
 int EN_TAG_QUEUING ;
 int PH_BUS_FREE ;
 int SCMD_MSGACCEPT ;
 int SRB_ABORT_SENT ;
 int SRB_DATA_XFER ;
 int SRB_DISCONNECT ;
 int SRB_READY ;
 int SRB_UNEXPECT_RESEL ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_HOSTID ;
 int TRMREG_SCSI_OFFSET ;
 int TRMREG_SCSI_SYNC ;
 int TRMREG_SCSI_TARGETID ;
 int TRM_DPRINTF (char*) ;
 int trm_EnableMsgOutAbort1 (TYPE_3__*,TYPE_1__*) ;
 int trm_RewaitSRB (TYPE_2__*,TYPE_1__*) ;
 int trm_reg_read16 (int ) ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write8 (int ,int ) ;

__attribute__((used)) static void
trm_Reselect(PACB pACB)
{
 PDCB pDCB;
 PSRB pSRB;
 u_int16_t RselTarLunId;

 TRM_DPRINTF("trm_Reselect................. \n");
 pDCB = pACB->pActiveDCB;
 if (pDCB) {

  pSRB = pDCB->pActiveSRB;
  pSRB->SRBState = SRB_READY;
  trm_RewaitSRB(pDCB, pSRB);
 }

 RselTarLunId = trm_reg_read16(TRMREG_SCSI_TARGETID) & 0x1FFF;
 pDCB = pACB->pLinkDCB;
 while (RselTarLunId != *((u_int16_t *) &pDCB->TargetID)) {

  pDCB = pDCB->pNextDCB;
 }

 pACB->pActiveDCB = pDCB;
 if (pDCB->SyncMode & EN_TAG_QUEUING) {
  pSRB = &pACB->TmpSRB;
  pDCB->pActiveSRB = pSRB;
 } else {
  pSRB = pDCB->pActiveSRB;
  if (!pSRB || !(pSRB->SRBState & SRB_DISCONNECT)) {



   pSRB = &pACB->TmpSRB;
   pSRB->SRBState = SRB_UNEXPECT_RESEL;
   pDCB->pActiveSRB = pSRB;
   trm_EnableMsgOutAbort1(pACB, pSRB);
  } else {
   if (pDCB->DCBFlag & ABORT_DEV_) {
    pSRB->SRBState = SRB_ABORT_SENT;
    trm_EnableMsgOutAbort1(pACB, pSRB);
   } else
    pSRB->SRBState = SRB_DATA_XFER;
  }
 }
 pSRB->ScsiPhase = PH_BUS_FREE;




 trm_reg_write8((u_int8_t) RselTarLunId,TRMREG_SCSI_TARGETID);

 trm_reg_write8(pACB->AdaptSCSIID,TRMREG_SCSI_HOSTID);

 trm_reg_write8(pDCB->SyncPeriod,TRMREG_SCSI_SYNC);

 trm_reg_write8(pDCB->SyncOffset,TRMREG_SCSI_OFFSET);

 trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




 trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);

}
