
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_7__ {int * ppath; scalar_t__ ACBFlag; int * pActiveDCB; } ;
typedef TYPE_1__* PACB ;


 int AC_BUS_RESET ;
 int CLRXFIFO ;
 int DELAY (int) ;
 int DO_CLRFIFO ;
 int EN_SCSIINTR ;
 int TRMREG_DMA_CONTROL ;
 int TRMREG_DMA_INTEN ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_INTEN ;
 int TRM_DPRINTF (char*) ;
 int splcam () ;
 int splx (int) ;
 int trm_DoWaitingSRB (TYPE_1__*) ;
 int trm_DoingSRB_Done (TYPE_1__*) ;
 int trm_ResetDevParam (TYPE_1__*) ;
 int trm_ResetSCSIBus (TYPE_1__*) ;
 int trm_reg_write16 (int ,int ) ;
 int trm_reg_write8 (int,int ) ;
 int xpt_async (int ,int *,int *) ;

__attribute__((used)) static void
trm_reset(PACB pACB)
{
 int intflag;
 u_int16_t i;

     TRM_DPRINTF("trm: RESET");
     intflag = splcam();
 trm_reg_write8(0x00, TRMREG_DMA_INTEN);
 trm_reg_write8(0x00, TRMREG_SCSI_INTEN);

 trm_ResetSCSIBus(pACB);
 for (i = 0; i < 500; i++)
  DELAY(1000);
     trm_reg_write8(0x7F, TRMREG_SCSI_INTEN);

 trm_reg_write8(EN_SCSIINTR, TRMREG_DMA_INTEN);

 trm_reg_write8(CLRXFIFO, TRMREG_DMA_CONTROL);

 trm_reg_write16(DO_CLRFIFO,TRMREG_SCSI_CONTROL);
 trm_ResetDevParam(pACB);
 trm_DoingSRB_Done(pACB);
 pACB->pActiveDCB = ((void*)0);
 pACB->ACBFlag = 0;
 trm_DoWaitingSRB(pACB);

 if (pACB->ppath != ((void*)0))
  xpt_async(AC_BUS_RESET, pACB->ppath, ((void*)0));
 splx(intflag);
     return;
}
