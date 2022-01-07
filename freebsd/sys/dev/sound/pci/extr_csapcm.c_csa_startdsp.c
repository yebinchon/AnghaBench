
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int csa_res ;


 int BA1_FRMT ;
 int BA1_SPCR ;
 int DELAY (int) ;
 int EAGAIN ;
 int SPCR_DRQEN ;
 int SPCR_RUN ;
 int SPCR_RUNFR ;
 int csa_readmem (int *,int ) ;
 int csa_writemem (int *,int ,int) ;

__attribute__((used)) static int
csa_startdsp(csa_res *resp)
{
 int i;
 u_long ul;




 csa_writemem(resp, BA1_FRMT, 0xadf);





 csa_writemem(resp, BA1_SPCR, SPCR_RUN | SPCR_RUNFR | SPCR_DRQEN);





 ul = 0;
 for (i = 0 ; i < 25 ; i++) {



  DELAY(50);



  ul = csa_readmem(resp, BA1_SPCR);




  if((ul & SPCR_RUNFR) == 0)
   break;
 }



 if((ul & SPCR_RUNFR) != 0)
  return (EAGAIN);

 return (0);
}
