
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_query {TYPE_1__ cid; } ;






 int FVCO_1440 ;
 int FVCO_880 ;
 int FVCO_960 ;
 int PMU_CST4330_SDIOD_CHIPMODE (struct bhnd_pmu_query*) ;
 int PMU_DEBUG (struct bhnd_pmu_query*,char*,int) ;

__attribute__((used)) static uint32_t
bhnd_pmu1_pllfvco0(struct bhnd_pmu_query *sc)
{
 switch (sc->cid.chip_id) {
 case 130:
  return (FVCO_880);
 case 131:
  return (FVCO_1440);
 case 128:
  return (FVCO_960);
 case 129:
  if (PMU_CST4330_SDIOD_CHIPMODE(sc))
   return (FVCO_960);
  else
   return (FVCO_1440);
 default:
  PMU_DEBUG(sc, "bhnd_pmu1_pllfvco0: Unknown chipid %#hx\n",
      sc->cid.chip_id);
  return (0);
 }
}
