
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int OCP85XX_CPC_CFG0 ;
 scalar_t__ OCP85XX_CPC_CFG0_SZ_K (scalar_t__) ;
 int OCP85XX_CPC_CSR0 ;
 scalar_t__ OCP85XX_CPC_CSR0_CE ;
 int RB_VERBOSE ;
 int SPR_SVR ;
 scalar_t__ SVR_P2041 ;
 scalar_t__ SVR_P2041E ;
 scalar_t__ SVR_P3041 ;
 scalar_t__ SVR_P3041E ;
 scalar_t__ SVR_P5020 ;
 scalar_t__ SVR_P5020E ;
 scalar_t__ SVR_VER (int ) ;
 int boothowto ;
 scalar_t__ ccsr_read4 (int ) ;
 int l3cache_enable () ;
 int l3cache_inval () ;
 int mfspr (int ) ;
 int printf (char*,scalar_t__,char*) ;

void
mpc85xx_enable_l3_cache(void)
{
 uint32_t csr, size, ver;


 ver = SVR_VER(mfspr(SPR_SVR));
 if (ver == SVR_P2041 || ver == SVR_P2041E || ver == SVR_P3041 ||
     ver == SVR_P3041E || ver == SVR_P5020 || ver == SVR_P5020E) {
  csr = ccsr_read4(OCP85XX_CPC_CSR0);
  if ((csr & OCP85XX_CPC_CSR0_CE) == 0) {
   l3cache_inval();
   l3cache_enable();
  }

  csr = ccsr_read4(OCP85XX_CPC_CSR0);
  if ((boothowto & RB_VERBOSE) != 0 ||
      (csr & OCP85XX_CPC_CSR0_CE) == 0) {
   size = OCP85XX_CPC_CFG0_SZ_K(ccsr_read4(OCP85XX_CPC_CFG0));
   printf("L3 Corenet Platform Cache: %d KB %sabled\n",
       size, (csr & OCP85XX_CPC_CSR0_CE) == 0 ?
       "dis" : "en");
  }
 }
}
