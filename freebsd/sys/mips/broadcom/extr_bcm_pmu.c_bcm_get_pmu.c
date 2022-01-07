
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pmu_query {int dummy; } ;
struct bcm_platform {struct bhnd_pmu_query pmu; } ;


 int bcm_has_pmu (struct bcm_platform*) ;

__attribute__((used)) static struct bhnd_pmu_query *
bcm_get_pmu(struct bcm_platform *bp)
{
 if (!bcm_has_pmu(bp))
  return (((void*)0));
 return (&bp->pmu);
}
