
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {int ACBFlag; int * pActiveDCB; } ;
typedef TYPE_1__* PACB ;


 int DELAY (int) ;
 int DO_CLRFIFO ;
 int RESET_DETECT ;
 int RESET_DEV ;
 int RESET_DONE ;
 int STOPDMAXFER ;
 int TRMREG_DMA_CONTROL ;
 int TRMREG_SCSI_CONTROL ;
 int TRM_DPRINTF (char*) ;
 int splcam () ;
 int splx (int) ;
 int trm_DoWaitingSRB (TYPE_1__*) ;
 int trm_RecoverSRB (TYPE_1__*) ;
 int trm_ResetDevParam (TYPE_1__*) ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write8 (int ,int ) ;

__attribute__((used)) static void
trm_ScsiRstDetect(PACB pACB)
{
 int intflag;
 u_long wlval;

 TRM_DPRINTF("trm_ScsiRstDetect \n");
 wlval = 1000;
 while (--wlval)
  DELAY(1000);
 intflag = splcam();
     trm_reg_write8(STOPDMAXFER,TRMREG_DMA_CONTROL);

 trm_reg_write16(DO_CLRFIFO,TRMREG_SCSI_CONTROL);

 if (pACB->ACBFlag & RESET_DEV)
  pACB->ACBFlag |= RESET_DONE;
 else {
  pACB->ACBFlag |= RESET_DETECT;
  trm_ResetDevParam(pACB);

  trm_RecoverSRB(pACB);
  pACB->pActiveDCB = ((void*)0);
  pACB->ACBFlag = 0;
  trm_DoWaitingSRB(pACB);
 }
 splx(intflag);
     return;
}
