
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_int8_t ;
typedef int u_int16_t ;
struct TYPE_5__ {scalar_t__ length; int address; } ;
struct TYPE_4__ {int SRBState; scalar_t__ SRBTotalXferLength; scalar_t__ SRBSGIndex; scalar_t__ SRBSGCount; TYPE_2__* pSRBSGL; int SRBStatus; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PSEG ;
typedef int PACB ;


 scalar_t__ DMAXFERCOMP ;
 int PARITYERROR ;
 int PARITY_ERROR ;
 int SCSIXFERCNT_2_ZERO ;
 int SRB_XFERPAD ;
 int TRMREG_DMA_STATUS ;
 int TRMREG_SCSI_COUNTER ;
 scalar_t__ trm_reg_read32 (int ) ;
 scalar_t__ trm_reg_read8 (int ) ;

__attribute__((used)) static void
trm_DataInPhase0(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{
 u_int8_t TempDMAstatus, SGIndexTemp;
 u_int16_t scsi_status;
 PSEG pseg;
 u_long TempSRBXferredLength,dLeftCounter = 0;

     scsi_status = *pscsi_status;
 if (!(pSRB->SRBState & SRB_XFERPAD)) {
  if (scsi_status & PARITYERROR)
   pSRB->SRBStatus |= PARITY_ERROR;
  dLeftCounter += trm_reg_read32(TRMREG_SCSI_COUNTER);
  if ((dLeftCounter == 0) || (scsi_status & SCSIXFERCNT_2_ZERO)) {
   TempDMAstatus = trm_reg_read8(TRMREG_DMA_STATUS);
   while (!(TempDMAstatus & DMAXFERCOMP))
    TempDMAstatus = trm_reg_read8(TRMREG_DMA_STATUS);
   pSRB->SRBTotalXferLength = 0;
  } else {
    if (pSRB->SRBTotalXferLength != dLeftCounter) {



     TempSRBXferredLength =
     pSRB->SRBTotalXferLength - dLeftCounter;



   pSRB->SRBTotalXferLength = dLeftCounter;



   pseg = pSRB->pSRBSGL + pSRB->SRBSGIndex;
   for (SGIndexTemp = pSRB->SRBSGIndex;
       SGIndexTemp < pSRB->SRBSGCount;
       SGIndexTemp++) {



     if (TempSRBXferredLength >= pseg->length)
     TempSRBXferredLength -= pseg->length;
    else {



     pseg->length -= TempSRBXferredLength;

     pseg->address += TempSRBXferredLength;

     pSRB->SRBSGIndex = SGIndexTemp;
     break;
    }
    pseg++;
   }
      }
  }
 }
}
