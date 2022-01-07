
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int DBCR0_IDM ;
 int DBCR0_RST_SYSTEM ;
 int OCP85XX_RSTCR ;
 int PSL_DE ;
 int SPR_DBCR0 ;
 int ccsr_write4 (int ,int) ;
 int mfmsr () ;
 int mtmsr (int) ;
 int mtspr (int ,int) ;
 int printf (char*) ;

__attribute__((used)) static void
mpc85xx_reset(platform_t plat)
{






 ccsr_write4(OCP85XX_RSTCR, 2);

 mtmsr(mfmsr() & ~PSL_DE);


 mtspr(SPR_DBCR0, DBCR0_IDM | DBCR0_RST_SYSTEM);
 __asm __volatile("isync");


 mtmsr(mfmsr() | PSL_DE);

 printf("Reset failed...\n");
 while (1)
  ;
}
