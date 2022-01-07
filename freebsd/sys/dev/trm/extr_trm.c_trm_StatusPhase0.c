
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_3__ {int SRBState; int TargetStatus; } ;
typedef TYPE_1__* PSRB ;
typedef int PACB ;


 int DO_DATALATCH ;
 int PH_BUS_FREE ;
 int SCMD_MSGACCEPT ;
 int SRB_COMPLETED ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_FIFO ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write8 (int ,int ) ;

__attribute__((used)) static void
trm_StatusPhase0(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{

 pSRB->TargetStatus = trm_reg_read8(TRMREG_SCSI_FIFO);
 pSRB->SRBState = SRB_COMPLETED;
 *pscsi_status = PH_BUS_FREE;

 trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




 trm_reg_write8(SCMD_MSGACCEPT, TRMREG_SCSI_COMMAND);
}
