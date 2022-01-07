
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int OCP85XX_LAWBAR (int) ;
 int OCP85XX_LAWBARH (int) ;
 int OCP85XX_LAWBARL (int) ;
 int OCP85XX_LAWSR_85XX (int) ;
 int OCP85XX_LAWSR_QORIQ (int) ;
 int ccsr_read4 (int ) ;
 int ccsr_write4 (int ,int) ;
 int isync () ;
 scalar_t__ mpc85xx_is_qoriq () ;

__attribute__((used)) static inline void
law_write(uint32_t n, uint64_t bar, uint32_t sr)
{

 if (mpc85xx_is_qoriq()) {
  ccsr_write4(OCP85XX_LAWBARH(n), bar >> 32);
  ccsr_write4(OCP85XX_LAWBARL(n), bar);
  ccsr_write4(OCP85XX_LAWSR_QORIQ(n), sr);
  ccsr_read4(OCP85XX_LAWSR_QORIQ(n));
 } else {
  ccsr_write4(OCP85XX_LAWBAR(n), bar >> 12);
  ccsr_write4(OCP85XX_LAWSR_85XX(n), sr);
  ccsr_read4(OCP85XX_LAWSR_85XX(n));
 }
 isync();
}
