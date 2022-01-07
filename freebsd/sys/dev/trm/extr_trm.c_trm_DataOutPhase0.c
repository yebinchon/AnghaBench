
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_int8_t ;
typedef int u_int16_t ;
struct TYPE_7__ {int SyncPeriod; } ;
struct TYPE_6__ {int length; int address; } ;
struct TYPE_5__ {int SRBState; int SRBTotalXferLength; scalar_t__ SRBSGIndex; scalar_t__ SRBSGCount; TYPE_2__* pSRBSGL; int SRBStatus; TYPE_3__* pSRBDCB; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PSEG ;
typedef TYPE_3__* PDCB ;
typedef int PACB ;


 scalar_t__ DMAXFERCOMP ;
 int DO_CLRFIFO ;
 int PARITYERROR ;
 int PARITY_ERROR ;
 int SCSIXFERCNT_2_ZERO ;
 int SCSIXFERDONE ;
 int SRB_XFERPAD ;
 int STOPDMAXFER ;
 int TRMREG_DMA_CONTROL ;
 int TRMREG_DMA_STATUS ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_COUNTER ;
 int TRMREG_SCSI_FIFOCNT ;
 int WIDE_SYNC ;
 scalar_t__ trm_reg_read32 (int ) ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write8 (int ,int ) ;

__attribute__((used)) static void
trm_DataOutPhase0(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{
 PDCB pDCB;
 u_int8_t TempDMAstatus,SGIndexTemp;
 u_int16_t scsi_status;
 PSEG pseg;
 u_long TempSRBXferredLength,dLeftCounter=0;

 pDCB = pSRB->pSRBDCB;
 scsi_status = *pscsi_status;

 if (!(pSRB->SRBState & SRB_XFERPAD)) {
  if (scsi_status & PARITYERROR)
   pSRB->SRBStatus |= PARITY_ERROR;
  if (!(scsi_status & SCSIXFERDONE)) {




     dLeftCounter = (u_long)
     (trm_reg_read8(TRMREG_SCSI_FIFOCNT) & 0x3F);
   if (pDCB->SyncPeriod & WIDE_SYNC) {




    dLeftCounter <<= 1;
   }
  }
  dLeftCounter += trm_reg_read32(TRMREG_SCSI_COUNTER);
  if (dLeftCounter == 1) {
   dLeftCounter = 0;
   trm_reg_write16(DO_CLRFIFO,TRMREG_SCSI_CONTROL);
  }
  if ((dLeftCounter == 0) ||
      (scsi_status & SCSIXFERCNT_2_ZERO)) {
   TempDMAstatus = trm_reg_read8(TRMREG_DMA_STATUS);
   while (!(TempDMAstatus & DMAXFERCOMP)) {
    TempDMAstatus =
      trm_reg_read8(TRMREG_DMA_STATUS);
   }
   pSRB->SRBTotalXferLength = 0;
  } else {






   if (pSRB->SRBTotalXferLength != dLeftCounter) {



    TempSRBXferredLength =
      pSRB->SRBTotalXferLength - dLeftCounter;



    pSRB->SRBTotalXferLength = dLeftCounter;



    pseg =
      pSRB->pSRBSGL + pSRB->SRBSGIndex;
    for (SGIndexTemp = pSRB->SRBSGIndex;
        SGIndexTemp < pSRB->SRBSGCount;
        SGIndexTemp++) {




     if (TempSRBXferredLength >=
         pseg->length)
      TempSRBXferredLength -=
        pseg->length;
     else {




      pseg->length -=
        TempSRBXferredLength;

      pseg->address +=
        TempSRBXferredLength;

      pSRB->SRBSGIndex = SGIndexTemp;
      break;
     }
     pseg++;
    }
   }
  }
 }
 trm_reg_write8(STOPDMAXFER ,TRMREG_DMA_CONTROL);
}
