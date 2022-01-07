
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ACBFlag; } ;
typedef TYPE_1__* PACB ;


 int DO_RSTSCSI ;
 int INT_SCSIRESET ;
 int RESET_DEV ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_INTSTATUS ;
 int splcam () ;
 int splx (int) ;
 int trm_reg_read16 (int ) ;
 int trm_reg_write16 (int ,int ) ;

__attribute__((used)) static void
trm_ResetSCSIBus(PACB pACB)
{
 int intflag;

 intflag = splcam();
     pACB->ACBFlag |= RESET_DEV;

 trm_reg_write16(DO_RSTSCSI,TRMREG_SCSI_CONTROL);
 while (!(trm_reg_read16(TRMREG_SCSI_INTSTATUS) & INT_SCSIRESET));
 splx(intflag);
 return;
}
