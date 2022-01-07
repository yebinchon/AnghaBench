
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_3__ {int SRBState; } ;
typedef TYPE_1__* PSRB ;
typedef int PACB ;


 int DO_CLRFIFO ;
 int DO_DATALATCH ;
 int SCMD_FIFO_IN ;
 int SRB_DISCONNECT ;
 int SRB_MSGIN ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_COUNTER ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write32 (int,int ) ;
 int trm_reg_write8 (int ,int ) ;

__attribute__((used)) static void
trm_MsgInPhase1(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{

 trm_reg_write16(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
 trm_reg_write32(1,TRMREG_SCSI_COUNTER);
 if (!(pSRB->SRBState & SRB_MSGIN)) {
  pSRB->SRBState &= SRB_DISCONNECT;
  pSRB->SRBState |= SRB_MSGIN;
 }
 trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




 trm_reg_write8(SCMD_FIFO_IN, TRMREG_SCSI_COMMAND);
}
