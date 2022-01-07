
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pWaitingLastSRB; TYPE_1__* pWaitingSRB; } ;
struct TYPE_5__ {struct TYPE_5__* pNextSRB; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;



__attribute__((used)) static void
trm_SRBwaiting(PDCB pDCB, PSRB pSRB)
{

 if (pDCB->pWaitingSRB) {
  pDCB->pWaitingLastSRB->pNextSRB = pSRB;
  pDCB->pWaitingLastSRB = pSRB;
  pSRB->pNextSRB = ((void*)0);
 } else {
  pDCB->pWaitingSRB = pSRB;
  pDCB->pWaitingLastSRB = pSRB;
 }
}
