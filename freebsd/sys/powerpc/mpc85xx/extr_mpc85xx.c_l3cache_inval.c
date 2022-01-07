
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCP85XX_CPC_CSR0 ;
 int OCP85XX_CPC_CSR0_FI ;
 int OCP85XX_CPC_CSR0_LFC ;
 int ccsr_read4 (int ) ;
 int ccsr_write4 (int ,int) ;

__attribute__((used)) static void
l3cache_inval(void)
{


 ccsr_write4(OCP85XX_CPC_CSR0, OCP85XX_CPC_CSR0_FI |
     OCP85XX_CPC_CSR0_LFC);
 while (ccsr_read4(OCP85XX_CPC_CSR0) & (OCP85XX_CPC_CSR0_FI |
     OCP85XX_CPC_CSR0_LFC))
  ;
}
