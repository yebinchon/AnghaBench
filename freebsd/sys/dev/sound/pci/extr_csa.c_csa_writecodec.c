
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
typedef int csa_res ;


 int ACCTL_DCV ;
 int ACCTL_ESYN ;
 int ACCTL_RSTN ;
 int ACCTL_VFRM ;
 int BA0_AC97_RESET ;
 int BA0_ACCAD ;
 int BA0_ACCDA ;
 int BA0_ACCTL ;
 int DELAY (int) ;
 int EAGAIN ;
 int csa_readio (int *,int ) ;
 int csa_writeio (int *,int ,int) ;

int
csa_writecodec(csa_res *resp, u_long offset, u_int32_t data)
{
 int i;
 u_int32_t acctl;
 csa_writeio(resp, BA0_ACCAD, offset - BA0_AC97_RESET);
 csa_writeio(resp, BA0_ACCDA, data);
 csa_writeio(resp, BA0_ACCTL, ACCTL_DCV | ACCTL_VFRM | ACCTL_ESYN | ACCTL_RSTN);




 acctl = 0;
 for (i = 0 ; i < 10 ; i++) {



  DELAY(25);





  acctl = csa_readio(resp, BA0_ACCTL);
  if ((acctl & ACCTL_DCV) == 0)
   break;
 }




 if ((acctl & ACCTL_DCV) != 0)
  return (EAGAIN);

 return (0);
}
