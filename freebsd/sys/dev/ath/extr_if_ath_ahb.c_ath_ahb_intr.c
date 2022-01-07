
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR71XX_CPU_DDR_FLUSH_WMAC ;
 int ar71xx_device_flush_ddr (int ) ;
 int ath_intr (void*) ;

__attribute__((used)) static void
ath_ahb_intr(void *arg)
{

 ar71xx_device_flush_ddr(AR71XX_CPU_DDR_FLUSH_WMAC);
 ath_intr(arg);
}
