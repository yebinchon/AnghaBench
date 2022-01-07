
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_3__ {int SRBState; } ;
typedef TYPE_1__* PSRB ;
typedef int PACB ;


 int PH_BUS_FREE ;
 int SRB_ABORT_SENT ;
 int SRB_UNEXPECT_RESEL ;

__attribute__((used)) static void
trm_MsgOutPhase0(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{

 if (pSRB->SRBState & (SRB_UNEXPECT_RESEL+SRB_ABORT_SENT))
  *pscsi_status = PH_BUS_FREE;

}
