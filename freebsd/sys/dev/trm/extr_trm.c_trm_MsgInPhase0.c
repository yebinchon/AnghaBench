
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef int u_int16_t ;
struct TYPE_19__ {int SRBState; scalar_t__* MsgInBuf; int MsgCnt; scalar_t__* pMsgPtr; scalar_t__ TagNumber; TYPE_5__* pSRBDCB; int * MsgOutBuf; struct TYPE_19__* pNextSRB; } ;
struct TYPE_21__ {int AdaptType; TYPE_4__ TmpSRB; TYPE_5__* pActiveDCB; } ;
struct TYPE_17__ {int offset; void* period; void* width; } ;
struct TYPE_16__ {int offset; void* period; void* width; } ;
struct TYPE_18__ {TYPE_2__ current; TYPE_1__ goal; } ;
struct TYPE_20__ {int SyncMode; int SyncPeriod; int SyncOffset; int DCBFlag; int MaxNegoPeriod; TYPE_3__ tinfo; TYPE_4__* pActiveSRB; TYPE_4__* pGoingLastSRB; TYPE_4__* pGoingSRB; } ;
typedef TYPE_4__* PSRB ;
typedef TYPE_5__* PDCB ;
typedef TYPE_6__* PACB ;


 int ABORT_DEV_ ;
 scalar_t__ ALT_SYNC ;
 int DO_CLRATN ;
 int DO_DATALATCH ;
 int DO_SETATN ;
 int EN_ATN_STOP ;
 scalar_t__ LVDS_SYNC ;
 int MSG_ABORT_TAG ;
 scalar_t__ MSG_DISCONNECT ;
 scalar_t__ MSG_EXTENDED ;
 void* MSG_EXT_WDTR_BUS_16_BIT ;
 void* MSG_EXT_WDTR_BUS_8_BIT ;
 scalar_t__ MSG_IGNOREWIDE ;
 scalar_t__ MSG_ORDER_QTAG ;
 scalar_t__ MSG_REJECT_ ;
 scalar_t__ MSG_SAVE_PTR ;
 scalar_t__ MSG_SIMPLE_QTAG ;
 int PH_BUS_FREE ;
 int SCMD_MSGACCEPT ;
 int SRB_ABORT_SENT ;
 int SRB_DATA_XFER ;
 int SRB_DISCONNECT ;
 int SRB_DO_SYNC_NEGO ;
 int SRB_DO_WIDE_NEGO ;
 int SRB_EXTEND_MSGIN ;
 int SRB_MSGIN ;
 int SRB_MSGOUT ;
 int SRB_UNEXPECT_RESEL ;
 int SYNC_NEGO_DONE ;
 int SYNC_NEGO_ENABLE ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_COUNTER ;
 int TRMREG_SCSI_FIFO ;
 int TRMREG_SCSI_OFFSET ;
 int TRMREG_SCSI_SYNC ;
 int TRM_DPRINTF (char*,...) ;
 int WIDE_NEGO_DONE ;
 int WIDE_NEGO_ENABLE ;
 int WIDE_SYNC ;
 scalar_t__* dc395u2x_clock_period ;
 void** dc395u2x_tinfo_period ;
 scalar_t__* dc395x_clock_period ;
 void** dc395x_tinfo_period ;
 int trm_EnableMsgOutAbort1 (TYPE_6__*,TYPE_4__*) ;
 int trm_EnableMsgOutAbort2 (TYPE_6__*,TYPE_4__*) ;
 int trm_SetXferRate (TYPE_6__*,TYPE_4__*,TYPE_5__*) ;
 scalar_t__ trm_reg_read8 (int ) ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write32 (int,int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
trm_MsgInPhase0(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{
 u_int8_t message_in_code,bIndex,message_in_tag_id;
 PDCB pDCB;
 PSRB pSRBTemp;

 pDCB = pACB->pActiveDCB;

 message_in_code = trm_reg_read8(TRMREG_SCSI_FIFO);
 if (!(pSRB->SRBState & SRB_EXTEND_MSGIN)) {
  if (message_in_code == MSG_DISCONNECT) {
   pSRB->SRBState = SRB_DISCONNECT;
   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  } else if (message_in_code == MSG_SAVE_PTR) {
   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  } else if ((message_in_code == MSG_EXTENDED) ||
      ((message_in_code >= MSG_SIMPLE_QTAG) &&
       (message_in_code <= MSG_ORDER_QTAG))) {
   pSRB->SRBState |= SRB_EXTEND_MSGIN;
       pSRB->MsgInBuf[0] = message_in_code;

   pSRB->MsgCnt = 1;
   pSRB->pMsgPtr = &pSRB->MsgInBuf[1];

   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  } else if (message_in_code == MSG_REJECT_) {

   if (pDCB->SyncMode & WIDE_NEGO_ENABLE) {

    pDCB = pSRB->pSRBDCB;
    pDCB->SyncMode |= WIDE_NEGO_DONE;
    pDCB->SyncMode &= ~(SYNC_NEGO_DONE |
        EN_ATN_STOP | WIDE_NEGO_ENABLE);
    pSRB->SRBState &= ~(SRB_DO_WIDE_NEGO+SRB_MSGIN);
    if ((pDCB->SyncMode & SYNC_NEGO_ENABLE)
        && !(pDCB->SyncMode & SYNC_NEGO_DONE)) {

     pSRB->SRBState |= SRB_MSGOUT;
     trm_reg_write16(
         DO_SETATN,
         TRMREG_SCSI_CONTROL);
    } else {

     trm_reg_write16(
         DO_CLRATN,
         TRMREG_SCSI_CONTROL);
    }
   } else if (pDCB->SyncMode & SYNC_NEGO_ENABLE) {

    trm_reg_write16(DO_CLRATN,TRMREG_SCSI_CONTROL);
    if (pSRB->SRBState & SRB_DO_SYNC_NEGO) {
     pDCB = pSRB->pSRBDCB;
     pDCB->SyncMode &=
       ~(SYNC_NEGO_ENABLE+SYNC_NEGO_DONE);
     pDCB->SyncPeriod = 0;
     pDCB->SyncOffset = 0;





     trm_reg_write8(pDCB->SyncPeriod,
         TRMREG_SCSI_SYNC);
     trm_reg_write8(pDCB->SyncOffset,
         TRMREG_SCSI_OFFSET);
     trm_SetXferRate(pACB,pSRB,pDCB);
    }
   }
   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  } else if (message_in_code == MSG_IGNOREWIDE) {
   trm_reg_write32(1, TRMREG_SCSI_COUNTER);
   trm_reg_read8(TRMREG_SCSI_FIFO);
   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  } else {




   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  }
 } else {



  *pSRB->pMsgPtr = message_in_code;
  pSRB->MsgCnt++;
  pSRB->pMsgPtr++;
  TRM_DPRINTF("pSRB->MsgInBuf[0]=%2x \n ",pSRB->MsgInBuf[0]);
  TRM_DPRINTF("pSRB->MsgInBuf[1]=%2x \n ",pSRB->MsgInBuf[1]);
  TRM_DPRINTF("pSRB->MsgInBuf[2]=%2x \n ",pSRB->MsgInBuf[2]);
  TRM_DPRINTF("pSRB->MsgInBuf[3]=%2x \n ",pSRB->MsgInBuf[3]);
  TRM_DPRINTF("pSRB->MsgInBuf[4]=%2x \n ",pSRB->MsgInBuf[4]);
      if ((pSRB->MsgInBuf[0] >= MSG_SIMPLE_QTAG)
      && (pSRB->MsgInBuf[0] <= MSG_ORDER_QTAG)) {
   if (pSRB->MsgCnt == 2) {
    pSRB->SRBState = 0;
    message_in_tag_id = pSRB->MsgInBuf[1];
    pSRB = pDCB->pGoingSRB;
    pSRBTemp = pDCB->pGoingLastSRB;
    if (pSRB) {
     for (;;) {
      if (pSRB->TagNumber !=
          message_in_tag_id) {
       if (pSRB == pSRBTemp) {
        goto mingx0;
       }
       pSRB = pSRB->pNextSRB;
      } else
       break;
     }
     if (pDCB->DCBFlag & ABORT_DEV_) {
      pSRB->SRBState = SRB_ABORT_SENT;
      trm_EnableMsgOutAbort1(
          pACB, pSRB);
     }
     if (!(pSRB->SRBState & SRB_DISCONNECT)) {
      TRM_DPRINTF("SRB not yet disconnect........ \n ");
      goto mingx0;
     }
     pDCB->pActiveSRB = pSRB;
     pSRB->SRBState = SRB_DATA_XFER;
    } else {
mingx0:
          pSRB = &pACB->TmpSRB;
     pSRB->SRBState = SRB_UNEXPECT_RESEL;
     pDCB->pActiveSRB = pSRB;
     pSRB->MsgOutBuf[0] = MSG_ABORT_TAG;
     trm_EnableMsgOutAbort2(
         pACB,
         pSRB);
    }
   }
   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  } else if ((pSRB->MsgInBuf[0] == MSG_EXTENDED) &&
      (pSRB->MsgInBuf[2] == 3) && (pSRB->MsgCnt == 4)) {
   pDCB = pSRB->pSRBDCB;
   pSRB->SRBState &= ~(SRB_EXTEND_MSGIN+SRB_DO_WIDE_NEGO);
   if ((pSRB->MsgInBuf[1] != 2)) {

    pDCB->SyncMode &=
      ~(WIDE_NEGO_ENABLE+WIDE_NEGO_DONE);
    pSRB->MsgCnt = 1;
    pSRB->MsgInBuf[0] = MSG_REJECT_;
    trm_reg_write16(DO_SETATN, TRMREG_SCSI_CONTROL);
    *pscsi_status = PH_BUS_FREE;

    trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



    trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
    return;
   }
   if (pDCB->SyncMode & WIDE_NEGO_ENABLE) {

    if (pSRB->MsgInBuf[3] > 2) {


     pDCB->SyncMode &=
       ~(WIDE_NEGO_ENABLE+WIDE_NEGO_DONE);
     pSRB->MsgCnt = 1;
     pSRB->MsgInBuf[0] = MSG_REJECT_;
     trm_reg_write16(DO_SETATN,
         TRMREG_SCSI_CONTROL);
     *pscsi_status = PH_BUS_FREE;

     trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



     trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
     return;
    }
    if (pSRB->MsgInBuf[3] == 2) {
     pSRB->MsgInBuf[3] = 1;

    } else {
     if (!(pDCB->SyncMode
           & WIDE_NEGO_DONE)) {
      pSRB->SRBState &=
        ~(SRB_DO_WIDE_NEGO+SRB_MSGIN);
      pDCB->SyncMode |=
        WIDE_NEGO_DONE;
      pDCB->SyncMode &=
        ~(SYNC_NEGO_DONE |
            EN_ATN_STOP |
            WIDE_NEGO_ENABLE);
      if (pSRB->MsgInBuf[3] != 0) {

       pDCB->SyncPeriod |=
         WIDE_SYNC;
       pDCB->tinfo.current.width
         = MSG_EXT_WDTR_BUS_16_BIT;
       pDCB->tinfo.goal.width
         = MSG_EXT_WDTR_BUS_16_BIT;
      }
     }
    }
   } else
    pSRB->MsgInBuf[3] = 0;
   pSRB->SRBState |= SRB_MSGOUT;
   trm_reg_write16(DO_SETATN,TRMREG_SCSI_CONTROL);
   *pscsi_status = PH_BUS_FREE;

   trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);



   trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
   return;
  } else if ((pSRB->MsgInBuf[0] == MSG_EXTENDED) &&
      (pSRB->MsgInBuf[2] == 1) && (pSRB->MsgCnt == 5)) {
   pSRB->SRBState &= ~(SRB_EXTEND_MSGIN+SRB_DO_SYNC_NEGO);
   if ((pSRB->MsgInBuf[1] != 3) ||
       (pSRB->MsgInBuf[2] != 1)) {

    pSRB->MsgCnt = 1;
    pSRB->MsgInBuf[0] = MSG_REJECT_;
    trm_reg_write16(DO_SETATN, TRMREG_SCSI_CONTROL);
    *pscsi_status = PH_BUS_FREE;

    trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




    trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
    return;
   } else if (!(pSRB->MsgInBuf[3]) || !(pSRB->MsgInBuf[4])) {

    pDCB = pSRB->pSRBDCB;

    pDCB->SyncMode &=
      ~(SYNC_NEGO_ENABLE+SYNC_NEGO_DONE);
    pDCB->SyncPeriod = 0;
    pDCB->SyncOffset = 0;
    pDCB->tinfo.goal.period = 0;
    pDCB->tinfo.goal.offset = 0;
    pDCB->tinfo.current.period = 0;
    pDCB->tinfo.current.offset = 0;
    pDCB->tinfo.current.width =
      MSG_EXT_WDTR_BUS_8_BIT;





    trm_reg_write8(pDCB->SyncPeriod,TRMREG_SCSI_SYNC);
    trm_reg_write8(pDCB->SyncOffset,TRMREG_SCSI_OFFSET);
    trm_SetXferRate(pACB,pSRB,pDCB);
    *pscsi_status = PH_BUS_FREE;

    trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




    trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
    return;
   } else {

    pDCB = pSRB->pSRBDCB;
    pDCB->SyncMode |=
      SYNC_NEGO_ENABLE+SYNC_NEGO_DONE;
    pDCB->MaxNegoPeriod = pSRB->MsgInBuf[3];

    pDCB->SyncOffset = pSRB->MsgInBuf[4];

    if (pACB->AdaptType == 1) {
     for(bIndex = 0; bIndex < 7; bIndex++) {
      if (pSRB->MsgInBuf[3] <=
        dc395u2x_clock_period[bIndex]) {
                pDCB->tinfo.goal.period =
      dc395u2x_tinfo_period[bIndex];
                pDCB->tinfo.current.period =
      dc395u2x_tinfo_period[bIndex];
                   pDCB->tinfo.goal.offset =
         pDCB->SyncOffset;
     pDCB->tinfo.current.offset =
         pDCB->SyncOffset;
     pDCB->SyncPeriod |= (bIndex|LVDS_SYNC);
     break;
      }
     }
    } else {
     for(bIndex = 0; bIndex < 7; bIndex++) {
      if (pSRB->MsgInBuf[3] <=
       dc395x_clock_period[bIndex]) {
         pDCB->tinfo.goal.period =
      dc395x_tinfo_period[bIndex];
         pDCB->tinfo.current.period =
      dc395x_tinfo_period[bIndex];
         pDCB->tinfo.goal.offset =
      pDCB->SyncOffset;
         pDCB->tinfo.current.offset =
                  pDCB->SyncOffset;
              pDCB->SyncPeriod |=
                  (bIndex|ALT_SYNC);
              break;
      }
     }
    }





    trm_reg_write8(pDCB->SyncPeriod,
        TRMREG_SCSI_SYNC);
    trm_reg_write8(pDCB->SyncOffset,
        TRMREG_SCSI_OFFSET);
    trm_SetXferRate(pACB,pSRB,pDCB);
    *pscsi_status=PH_BUS_FREE;
    trm_reg_write16(DO_DATALATCH,TRMREG_SCSI_CONTROL);



    trm_reg_write8(SCMD_MSGACCEPT,TRMREG_SCSI_COMMAND);
    return;
   }
  }
 *pscsi_status = PH_BUS_FREE;

 trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




 trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
 }
}
