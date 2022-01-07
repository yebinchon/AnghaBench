
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FSL_E500mc ;
 int FSL_E5500 ;
 int L2CSR0_L2E ;
 int RB_VERBOSE ;
 int SPR_L2CSR0 ;
 int boothowto ;
 int l2cache_enable () ;
 int l2cache_inval () ;
 int mfpvr () ;
 int mfspr (int ) ;
 int printf (char*,char*) ;

void
booke_enable_l2_cache(void)
{
 uint32_t csr;


 if ((((mfpvr() >> 16) & 0xFFFF) == FSL_E500mc) ||
     (((mfpvr() >> 16) & 0xFFFF) == FSL_E5500)) {
  csr = mfspr(SPR_L2CSR0);
  if ((csr & L2CSR0_L2E) == 0) {
   l2cache_inval();
   l2cache_enable();
  }

  csr = mfspr(SPR_L2CSR0);
  if ((boothowto & RB_VERBOSE) != 0 || (csr & L2CSR0_L2E) == 0)
   printf("L2 cache %sabled\n",
       (csr & L2CSR0_L2E) ? "en" : "dis");
 }
}
