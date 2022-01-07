
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_platform {int pmu_addr; } ;
typedef int bus_size_t ;


 int BCM_SOC_ADDR (int ,int ) ;
 int readl (int ) ;

__attribute__((used)) static uint32_t
bcm_pmu_read4(bus_size_t reg, void *ctx) {
 struct bcm_platform *bp = ctx;
 return (readl(BCM_SOC_ADDR(bp->pmu_addr, reg)));
}
