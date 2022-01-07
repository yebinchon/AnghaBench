
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* sc_p ;
typedef int csa_res ;
struct TYPE_3__ {int res; } ;


 int ACCTL_ESYN ;
 int ACCTL_RSTN ;
 int ACCTL_VFRM ;
 int ACISV_ISV3 ;
 int ACISV_ISV4 ;
 int ACOSV_SLV3 ;
 int ACOSV_SLV4 ;
 int ACSTS_CRDY ;
 int BA0_AC97_POWERDOWN ;
 int BA0_ACCTL ;
 int BA0_ACISV ;
 int BA0_ACOSV ;
 int BA0_ACSTS ;
 int BA0_CLKCR1 ;
 int BA0_CLKCR2 ;
 int BA0_HICR ;
 int BA0_PLLCC ;
 int BA0_PLLM ;
 int BA0_SERACC ;
 int BA0_SERBSP ;
 int BA0_SERC1 ;
 int BA0_SERC2 ;
 int BA0_SERMC1 ;
 int CLKCR1_PLLP ;
 int CLKCR1_SWCE ;
 int CLKCR2_PDIVS_8 ;
 int DELAY (int) ;
 int ENXIO ;
 int HICR_CHGM ;
 int HICR_IEV ;
 int PLLCC_CDR_73_104_MHZ ;
 int PLLCC_LPF_1050_2780_KHZ ;
 int SERACC_CODEC_TYPE_1_03 ;
 int SERACC_CODEC_TYPE_2_0 ;
 int SERACC_HSP ;
 int SERC1_SO1EN ;
 int SERC1_SO1F_AC97 ;
 int SERC2_SI1F_AC97 ;
 int SERMC1_MSPE ;
 int SERMC1_PTC_AC97 ;
 int clkcr1 ;
 int csa_clearserialfifos (int *) ;
 int csa_readio (int *,int ) ;
 int csa_writeio (int *,int ,int) ;

__attribute__((used)) static int
csa_initialize(sc_p scp)
{
 int i;
 u_int32_t acsts, acisv;
 csa_res *resp;

 resp = &scp->res;






 csa_writeio(resp, BA0_CLKCR1, 0);
 csa_writeio(resp, BA0_SERMC1, 0);






 csa_writeio(resp, BA0_SERACC, SERACC_HSP | SERACC_CODEC_TYPE_1_03);
 csa_writeio(resp, BA0_ACCTL, 1);
 DELAY(50);
 csa_writeio(resp, BA0_ACCTL, 0);
 DELAY(50);
 csa_writeio(resp, BA0_ACCTL, ACCTL_RSTN);






 csa_writeio(resp, BA0_ACCTL, ACCTL_ESYN | ACCTL_RSTN);






 DELAY(50000);





 csa_writeio(resp, BA0_SERMC1, SERMC1_PTC_AC97);
 DELAY(700000);






 csa_writeio(resp, BA0_PLLCC, PLLCC_LPF_1050_2780_KHZ | PLLCC_CDR_73_104_MHZ);
 csa_writeio(resp, BA0_PLLM, 0x3a);
 csa_writeio(resp, BA0_CLKCR2, CLKCR2_PDIVS_8);




 csa_writeio(resp, BA0_CLKCR1, CLKCR1_PLLP);




 DELAY(5000);




 csa_writeio(resp, BA0_CLKCR1, csa_readio(resp, BA0_CLKCR1) | CLKCR1_SWCE);




 csa_clearserialfifos(resp);
 csa_writeio(resp, BA0_SERC1, SERC1_SO1F_AC97 | SERC1_SO1EN);
 csa_writeio(resp, BA0_SERC2, SERC2_SI1F_AC97 | SERC1_SO1EN);
 csa_writeio(resp, BA0_SERMC1, SERMC1_PTC_AC97 | SERMC1_MSPE);




 acsts = 0;
 for (i = 0 ; i < 1000 ; i++) {




  DELAY(125);





  acsts = csa_readio(resp, BA0_ACSTS);
  if ((acsts & ACSTS_CRDY) != 0)
   break;
 }




 if ((acsts & ACSTS_CRDY) == 0)
  return (ENXIO);





 csa_writeio(resp, BA0_ACCTL, ACCTL_VFRM | ACCTL_ESYN | ACCTL_RSTN);





 acisv = 0;
 for (i = 0 ; i < 2000 ; i++) {







  DELAY(1000);





  acisv = csa_readio(resp, BA0_ACISV);
  if ((acisv & (ACISV_ISV3 | ACISV_ISV4)) == (ACISV_ISV3 | ACISV_ISV4))
   break;
 }




 if ((acisv & (ACISV_ISV3 | ACISV_ISV4)) != (ACISV_ISV3 | ACISV_ISV4))
  return (ENXIO);





 csa_writeio(resp, BA0_ACOSV, ACOSV_SLV3 | ACOSV_SLV4);
 return (0);
}
