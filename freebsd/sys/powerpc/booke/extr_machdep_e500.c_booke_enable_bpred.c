
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BUCSR_BPEN ;
 int RB_VERBOSE ;
 int SPR_BUCSR ;
 int boothowto ;
 int bpred_enable () ;
 int mfspr (int ) ;
 int printf (char*,char*) ;

void
booke_enable_bpred(void)
{
 uint32_t csr;

 bpred_enable();
 csr = mfspr(SPR_BUCSR);
 if ((boothowto & RB_VERBOSE) != 0 || (csr & BUCSR_BPEN) == 0)
  printf("Branch Predictor %sabled\n",
      (csr & BUCSR_BPEN) ? "en" : "dis");
}
