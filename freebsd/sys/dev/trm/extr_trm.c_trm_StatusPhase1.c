
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_3__ {int SRBState; } ;
typedef TYPE_1__* PSRB ;
typedef int PACB ;


 int CLRXFIFO ;
 int DO_CLRFIFO ;
 int DO_DATALATCH ;
 int SCMD_COMP ;
 int SRB_STATUS ;
 int TRMREG_DMA_COMMAND ;
 int TRMREG_DMA_CONTROL ;
 int TRMREG_DMA_FIFOCNT ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_FIFOCNT ;
 int trm_reg_read16 (int ) ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write8 (int ,int ) ;

__attribute__((used)) static void
trm_StatusPhase1(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{

 if (trm_reg_read16(TRMREG_DMA_COMMAND) & 0x0001) {
  if (!(trm_reg_read8(TRMREG_SCSI_FIFOCNT) & 0x40))
          trm_reg_write16(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
  if (!(trm_reg_read16(TRMREG_DMA_FIFOCNT) & 0x8000))
   trm_reg_write8(CLRXFIFO, TRMREG_DMA_CONTROL);
 } else {
  if (!(trm_reg_read16(TRMREG_DMA_FIFOCNT) & 0x8000))
   trm_reg_write8(CLRXFIFO, TRMREG_DMA_CONTROL);
  if (!(trm_reg_read8(TRMREG_SCSI_FIFOCNT) & 0x40))
   trm_reg_write16(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
 }
 pSRB->SRBState = SRB_STATUS;
 trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




 trm_reg_write8(SCMD_COMP, TRMREG_SCSI_COMMAND);
}
