
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * MsgOutBuf; } ;
typedef TYPE_1__* PSRB ;
typedef int PACB ;


 int MSG_ABORT ;
 int trm_EnableMsgOutAbort2 (int ,TYPE_1__*) ;

__attribute__((used)) static void
trm_EnableMsgOutAbort1(PACB pACB, PSRB pSRB)
{

 pSRB->MsgOutBuf[0] = MSG_ABORT;
 trm_EnableMsgOutAbort2(pACB, pSRB);
}
