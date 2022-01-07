
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int AA_ESTATE_CEEN ;
 int AA_ESTATE_NCEEN ;
 int ASI_AFSR ;
 int ASI_ESTATE_ERROR_EN_REG ;
 int PCPU_GET (int ) ;
 int cache_enable (int ) ;
 int cache_flush () ;
 int corrected_ecc ;
 int impl ;
 int ldxa (int ,int ) ;
 int printf (char*) ;
 int stxa_sync (int ,int ,int) ;

__attribute__((used)) static int
trap_cecc(void)
{
 u_long eee;





 eee = ldxa(0, ASI_ESTATE_ERROR_EN_REG);
 stxa_sync(0, ASI_ESTATE_ERROR_EN_REG, eee & ~(AA_ESTATE_NCEEN |
     AA_ESTATE_CEEN));

 cache_flush();

 cache_enable(PCPU_GET(impl));

 stxa_sync(0, ASI_AFSR, ldxa(0, ASI_AFSR));
 corrected_ecc++;
 printf("corrected ECC error\n");

 stxa_sync(0, ASI_ESTATE_ERROR_EN_REG, eee);
 return (0);
}
