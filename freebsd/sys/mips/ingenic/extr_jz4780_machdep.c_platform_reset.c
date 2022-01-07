
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ JZ_TCU_BASE ;
 scalar_t__ JZ_WDOG_TCER ;
 scalar_t__ JZ_WDOG_TCNT ;
 scalar_t__ JZ_WDOG_TCSR ;
 scalar_t__ JZ_WDOG_TDR ;
 int TCER_ENABLE ;
 int TCSR_DIV_256 ;
 int TCSR_RTC_EN ;
 int writereg (scalar_t__,int) ;

void
platform_reset(void)
{




 writereg(JZ_TCU_BASE + JZ_WDOG_TCER, 0);
 writereg(JZ_TCU_BASE + JZ_WDOG_TCNT, 0);
 writereg(JZ_TCU_BASE + JZ_WDOG_TDR, 128);
 writereg(JZ_TCU_BASE + JZ_WDOG_TCSR, TCSR_RTC_EN | TCSR_DIV_256);
 writereg(JZ_TCU_BASE + JZ_WDOG_TCER, TCER_ENABLE);


 while (1)
  ;
}
