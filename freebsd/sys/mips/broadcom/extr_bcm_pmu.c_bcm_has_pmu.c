
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_platform {scalar_t__ pmu_addr; } ;



__attribute__((used)) static bool
bcm_has_pmu(struct bcm_platform *bp)
{
 return (bp->pmu_addr != 0);
}
