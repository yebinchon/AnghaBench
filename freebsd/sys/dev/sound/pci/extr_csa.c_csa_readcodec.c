
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
typedef int csa_res ;


 int ACCTL_CRW ;
 int ACCTL_DCV ;
 int ACCTL_ESYN ;
 int ACCTL_RSTN ;
 int ACCTL_VFRM ;
 int ACSTS_VSTS ;
 int BA0_AC97_RESET ;
 int BA0_ACCAD ;
 int BA0_ACCDA ;
 int BA0_ACCTL ;
 int BA0_ACSDA ;
 int BA0_ACSTS ;
 int DELAY (int) ;
 int EAGAIN ;
 int csa_readio (int *,int ) ;
 int csa_writeio (int *,int ,int) ;

int
csa_readcodec(csa_res *resp, u_long offset, u_int32_t *data)
{
 int i;
 u_int32_t acctl, acsts;





 csa_readio(resp, BA0_ACSDA);
 csa_writeio(resp, BA0_ACCAD, offset - BA0_AC97_RESET);
 csa_writeio(resp, BA0_ACCDA, 0);
 csa_writeio(resp, BA0_ACCTL, ACCTL_DCV | ACCTL_CRW | ACCTL_VFRM | ACCTL_ESYN | ACCTL_RSTN);




 acctl = 0;
 for (i = 0 ; i < 10 ; i++) {



  DELAY(25);





  acctl = csa_readio(resp, BA0_ACCTL);
  if ((acctl & ACCTL_DCV) == 0)
   break;
 }




 if ((acctl & ACCTL_DCV) != 0)
  return (EAGAIN);




 acsts = 0;
 for (i = 0 ; i < 10 ; i++) {




  acsts = csa_readio(resp, BA0_ACSTS);




  if ((acsts & ACSTS_VSTS) != 0)
   break;



   DELAY(25);
 }




 if ((acsts & ACSTS_VSTS) == 0)
  return (EAGAIN);





 *data = csa_readio(resp, BA0_ACSDA);

 return (0);
}
