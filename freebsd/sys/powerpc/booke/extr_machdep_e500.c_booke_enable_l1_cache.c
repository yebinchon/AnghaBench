
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int L1CSR0_DCE ;
 int L1CSR1_ICE ;
 int RB_VERBOSE ;
 int SPR_L1CSR0 ;
 int SPR_L1CSR1 ;
 int boothowto ;
 int dcache_enable () ;
 int dcache_inval () ;
 int icache_enable () ;
 int icache_inval () ;
 int mfspr (int ) ;
 int printf (char*,char*) ;

void
booke_enable_l1_cache(void)
{
 uint32_t csr;


 csr = mfspr(SPR_L1CSR0);
 if ((csr & L1CSR0_DCE) == 0) {
  dcache_inval();
  dcache_enable();
 }

 csr = mfspr(SPR_L1CSR0);
 if ((boothowto & RB_VERBOSE) != 0 || (csr & L1CSR0_DCE) == 0)
  printf("L1 D-cache %sabled\n",
      (csr & L1CSR0_DCE) ? "en" : "dis");


 csr = mfspr(SPR_L1CSR1);
 if ((csr & L1CSR1_ICE) == 0) {
  icache_inval();
  icache_enable();
 }

 csr = mfspr(SPR_L1CSR1);
 if ((boothowto & RB_VERBOSE) != 0 || (csr & L1CSR1_ICE) == 0)
  printf("L1 I-cache %sabled\n",
      (csr & L1CSR1_ICE) ? "en" : "dis");
}
