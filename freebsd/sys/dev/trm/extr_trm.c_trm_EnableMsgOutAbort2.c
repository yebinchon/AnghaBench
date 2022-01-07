
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MsgCnt; } ;
typedef TYPE_1__* PSRB ;
typedef int PACB ;


 int DO_SETATN ;
 int TRMREG_SCSI_CONTROL ;
 int trm_reg_write16 (int ,int ) ;

__attribute__((used)) static void
trm_EnableMsgOutAbort2(PACB pACB, PSRB pSRB)
{

 pSRB->MsgCnt = 1;
 trm_reg_write16(DO_SETATN, TRMREG_SCSI_CONTROL);
}
