
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pFreeSRB; } ;
struct TYPE_5__ {struct TYPE_5__* pNextSRB; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PACB ;


 int splcam () ;
 int splx (int) ;

__attribute__((used)) static PSRB
trm_GetSRB(PACB pACB)
{
 int intflag;
 PSRB pSRB;

 intflag = splcam();
     pSRB = pACB->pFreeSRB;
 if (pSRB) {
  pACB->pFreeSRB = pSRB->pNextSRB;
  pSRB->pNextSRB = ((void*)0);
 }
 splx(intflag);
     return (pSRB);
}
