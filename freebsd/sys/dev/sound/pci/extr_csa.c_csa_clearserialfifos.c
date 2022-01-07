
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int csa_res ;


 int BA0_CLKCR1 ;
 int BA0_SERBAD ;
 int BA0_SERBCM ;
 int BA0_SERBST ;
 int BA0_SERBWP ;
 int CLKCR1_SWCE ;
 int DELAY (int) ;
 int SERBCM_WRC ;
 int SERBST_WBSY ;
 int csa_readio (int *,int ) ;
 int csa_writeio (int *,int ,int) ;

void
csa_clearserialfifos(csa_res *resp)
{
 int i, j, pwr;
 u_int8_t clkcr1, serbst;





 pwr = 1;
 clkcr1 = csa_readio(resp, BA0_CLKCR1);
 if ((clkcr1 & CLKCR1_SWCE) == 0) {
  csa_writeio(resp, BA0_CLKCR1, clkcr1 | CLKCR1_SWCE);
  pwr = 0;
 }






 csa_writeio(resp, BA0_SERBWP, 0);


 serbst = 0;
 for (i = 0 ; i < 256 ; i++) {

  for (j = 0 ; j < 5 ; j++) {
   DELAY(100);
   serbst = csa_readio(resp, BA0_SERBST);
   if ((serbst & SERBST_WBSY) == 0)
    break;
  }
  if ((serbst & SERBST_WBSY) != 0) {
   if (!pwr)
    csa_writeio(resp, BA0_CLKCR1, clkcr1);
  }

  csa_writeio(resp, BA0_SERBAD, i);

  csa_writeio(resp, BA0_SERBCM, SERBCM_WRC);
 }




 if (!pwr)
  csa_writeio(resp, BA0_CLKCR1, clkcr1);
}
