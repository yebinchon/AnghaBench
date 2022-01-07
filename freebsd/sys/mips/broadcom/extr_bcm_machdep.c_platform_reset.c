
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chip_id; } ;
struct bcm_platform {int pmu_addr; TYPE_1__ cid; } ;


 int BCM_CHIPC_WRITE_4 (struct bcm_platform*,int ,int) ;
 int BCM_PMU_WRITE_4 (struct bcm_platform*,int ,int) ;
 scalar_t__ BHND_CHIPID_BCM4785 ;
 int BHND_PMU_WATCHDOG ;
 int BMIPS_BCMCFG_PLLCFG3_SM ;
 int CHIPC_WATCHDOG ;
 int bcm_bmips_wr_pllcfg3 (int ) ;
 struct bcm_platform* bcm_get_platform () ;
 int bcm_platform_data_avail ;
 int cfe_exit (int ,int ) ;
 int intr_disable () ;
 int mips_sync () ;
 int printf (char*) ;

void
platform_reset(void)
{
 struct bcm_platform *bp;
 bool bcm4785war;

 printf("bcm::platform_reset()\n");
 intr_disable();
 bp = bcm_get_platform();
 bcm4785war = 0;


 if (bp->cid.chip_id == BHND_CHIPID_BCM4785) {
  bcm4785war = 1;


  bcm_bmips_wr_pllcfg3(BMIPS_BCMCFG_PLLCFG3_SM);
 }


 if (bp->pmu_addr != 0x0) {
  BCM_PMU_WRITE_4(bp, BHND_PMU_WATCHDOG, 1);
 } else
  BCM_CHIPC_WRITE_4(bp, CHIPC_WATCHDOG, 1);


 if (bcm4785war) {
  mips_sync();
  __asm __volatile("wait");
 }

 while (1);
}
