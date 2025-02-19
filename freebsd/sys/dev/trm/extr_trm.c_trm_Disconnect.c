
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_int16_t ;
typedef size_t u_int ;
struct TYPE_17__ {int ** scan_devices; TYPE_3__* pFreeSRB; TYPE_4__* pActiveDCB; } ;
struct TYPE_16__ {int GoingSRBCnt; TYPE_3__* pActiveSRB; TYPE_3__* pGoingSRB; scalar_t__ DCBFlag; } ;
struct TYPE_15__ {int SRBState; int* CmdBlock; int TargetStatus; struct TYPE_15__* pNextSRB; int ScsiPhase; TYPE_2__* pccb; } ;
struct TYPE_13__ {size_t target_id; size_t target_lun; } ;
struct TYPE_14__ {TYPE_1__ ccb_h; } ;
typedef TYPE_3__* PSRB ;
typedef TYPE_4__* PDCB ;
typedef TYPE_5__* PACB ;


 int DELAY (int) ;
 int DO_CLRFIFO ;
 int DO_HWRESELECT ;
 int INQUIRY ;
 int PH_BUS_FREE ;
 int SCSI_STAT_SEL_TIMEOUT ;
 int SRB_ABORT_SENT ;
 int SRB_COMPLETED ;
 int SRB_DISCONNECT ;
 int SRB_FREE ;
 int SRB_MSGOUT ;
 int SRB_READY ;
 int SRB_START_ ;
 int SRB_UNEXPECT_RESEL ;
 int TRMREG_SCSI_CONTROL ;
 int TRM_DPRINTF (char*,...) ;
 int trm_DoWaitingSRB (TYPE_5__*) ;
 int trm_RewaitSRB (TYPE_4__*,TYPE_3__*) ;
 int trm_SRBdone (TYPE_5__*,TYPE_4__*,TYPE_3__*) ;
 int trm_reg_write16 (int,int ) ;

__attribute__((used)) static void
trm_Disconnect(PACB pACB)
{
 PDCB pDCB;
 PSRB pSRB, psrb;
 u_int16_t i,j, cnt;
 u_int target_id,target_lun;

 TRM_DPRINTF("trm_Disconnect...............\n ");

        pDCB = pACB->pActiveDCB;
 if (!pDCB) {
  TRM_DPRINTF(" Exception Disconnect DCB=NULL..............\n ");
  j = 400;
      while (--j)
   DELAY(1);

  trm_reg_write16((DO_CLRFIFO | DO_HWRESELECT),
      TRMREG_SCSI_CONTROL);
  return;
 }
 pSRB = pDCB->pActiveSRB;

 target_id = pSRB->pccb->ccb_h.target_id;
 target_lun = pSRB->pccb->ccb_h.target_lun;
 TRM_DPRINTF(":pDCB->pActiveSRB= %8x \n ",(u_int) pDCB->pActiveSRB);
 pACB->pActiveDCB = 0;
 pSRB->ScsiPhase = PH_BUS_FREE;

 trm_reg_write16((DO_CLRFIFO | DO_HWRESELECT), TRMREG_SCSI_CONTROL);
 if (pSRB->SRBState & SRB_UNEXPECT_RESEL) {
  pSRB->SRBState = 0;
  trm_DoWaitingSRB(pACB);
 } else if (pSRB->SRBState & SRB_ABORT_SENT) {
  pDCB->DCBFlag = 0;
  cnt = pDCB->GoingSRBCnt;
  pDCB->GoingSRBCnt = 0;
  pSRB = pDCB->pGoingSRB;
  for (i = 0; i < cnt; i++) {
   psrb = pSRB->pNextSRB;
   pSRB->pNextSRB = pACB->pFreeSRB;
   pACB->pFreeSRB = pSRB;
   pSRB = psrb;
  }
  pDCB->pGoingSRB = 0;
  trm_DoWaitingSRB(pACB);
 } else {
  if ((pSRB->SRBState & (SRB_START_+SRB_MSGOUT)) ||
      !(pSRB->SRBState & (SRB_DISCONNECT+SRB_COMPLETED))) {

   if (!(pACB->scan_devices[target_id][target_lun]) &&
       pSRB->CmdBlock[0] != 0x00 &&
       pSRB->CmdBlock[0] != INQUIRY) {
    pSRB->SRBState = SRB_READY;
    trm_RewaitSRB(pDCB, pSRB);
   } else {
    pSRB->TargetStatus = SCSI_STAT_SEL_TIMEOUT;
    goto disc1;
   }
  } else if (pSRB->SRBState & SRB_DISCONNECT) {



   trm_DoWaitingSRB(pACB);
  } else if (pSRB->SRBState & SRB_COMPLETED) {
disc1:



   pDCB->pActiveSRB = 0;
   pSRB->SRBState = SRB_FREE;
   trm_SRBdone(pACB, pDCB, pSRB);
  }
 }
 return;
}
