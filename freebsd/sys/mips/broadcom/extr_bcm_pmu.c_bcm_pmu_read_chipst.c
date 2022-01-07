
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_platform {int cc_addr; } ;


 int BCM_SOC_ADDR (int ,int ) ;
 int CHIPC_CHIPST ;
 int readl (int ) ;

__attribute__((used)) static uint32_t
bcm_pmu_read_chipst(void *ctx)
{
 struct bcm_platform *bp = ctx;
 return (readl(BCM_SOC_ADDR(bp->cc_addr, CHIPC_CHIPST)));
}
