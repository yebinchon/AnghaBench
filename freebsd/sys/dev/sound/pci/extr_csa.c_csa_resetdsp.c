
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csa_res ;


 int BA1_DREG ;
 int BA1_FRMT ;
 int BA1_SPCR ;
 int BA1_TWPR ;
 int DREG_REGID_TRAP_SELECT ;
 int SPCR_DRQEN ;
 int SPCR_RSTSP ;
 int csa_writemem (int *,int ,int) ;

void
csa_resetdsp(csa_res *resp)
{
 int i;




 csa_writemem(resp, BA1_SPCR, SPCR_RSTSP);




 csa_writemem(resp, BA1_SPCR, SPCR_DRQEN);




 for (i = 0 ; i < 8 ; i++) {
  csa_writemem(resp, BA1_DREG, DREG_REGID_TRAP_SELECT + i);
  csa_writemem(resp, BA1_TWPR, 0xffff);
 }
 csa_writemem(resp, BA1_DREG, 0);




 csa_writemem(resp, BA1_FRMT, 0xadf);
}
