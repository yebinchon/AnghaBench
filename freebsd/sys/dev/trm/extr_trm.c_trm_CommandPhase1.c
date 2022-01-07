
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ccb_scsiio {int sense_len; } ;
union ccb {struct ccb_scsiio csio; } ;
typedef int u_int8_t ;
typedef scalar_t__ u_int16_t ;
struct TYPE_8__ {TYPE_2__* pActiveDCB; } ;
struct TYPE_7__ {int IdentifyMsg; } ;
struct TYPE_6__ {int SRBFlag; int SRBState; scalar_t__ CmdBlock; scalar_t__ ScsiCmdLen; union ccb* pccb; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;
typedef TYPE_3__* PACB ;


 int AUTO_REQSENSE ;
 int DO_CLRATN ;
 int DO_CLRFIFO ;
 int DO_DATALATCH ;
 int REQUEST_SENSE ;
 int SCMD_FIFO_OUT ;
 int SRB_COMMAND ;
 int TRMREG_SCSI_COMMAND ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_FIFO ;
 int trm_reg_write16 (int,int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
trm_CommandPhase1(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{
 PDCB pDCB;
 u_int8_t * ptr;
 u_int16_t i, cnt;
 union ccb *pccb;
 struct ccb_scsiio *pcsio;

 pccb = pSRB->pccb;
 pcsio = &pccb->csio;

 trm_reg_write16(DO_CLRATN | DO_CLRFIFO , TRMREG_SCSI_CONTROL);
 if (!(pSRB->SRBFlag & AUTO_REQSENSE)) {
  cnt = (u_int16_t) pSRB->ScsiCmdLen;
  ptr = (u_int8_t *) pSRB->CmdBlock;
  for (i = 0; i < cnt; i++) {
   trm_reg_write8(*ptr, TRMREG_SCSI_FIFO);
   ptr++;
  }
 } else {
  trm_reg_write8(REQUEST_SENSE, TRMREG_SCSI_FIFO);
  pDCB = pACB->pActiveDCB;

  trm_reg_write8((pDCB->IdentifyMsg << 5), TRMREG_SCSI_FIFO);
  trm_reg_write8(0, TRMREG_SCSI_FIFO);
  trm_reg_write8(0, TRMREG_SCSI_FIFO);

  trm_reg_write8(pcsio->sense_len, TRMREG_SCSI_FIFO);
  trm_reg_write8(0, TRMREG_SCSI_FIFO);
 }
 pSRB->SRBState = SRB_COMMAND;
 trm_reg_write16(DO_DATALATCH, TRMREG_SCSI_CONTROL);




 trm_reg_write8(SCMD_FIFO_OUT, TRMREG_SCSI_COMMAND);
}
