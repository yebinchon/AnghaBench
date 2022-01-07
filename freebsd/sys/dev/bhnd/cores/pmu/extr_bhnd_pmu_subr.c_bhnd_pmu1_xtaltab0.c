
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_query {TYPE_1__ cid; } ;
typedef int pmu1_xtaltab0_t ;
 int PMU_CST4330_SDIOD_CHIPMODE (struct bhnd_pmu_query*) ;
 int PMU_DEBUG (struct bhnd_pmu_query*,char*,int) ;
 int const* pmu1_xtaltab0_1440 ;
 int const* pmu1_xtaltab0_1760 ;
 int const* pmu1_xtaltab0_880 ;
 int const* pmu1_xtaltab0_880_4329 ;
 int const* pmu1_xtaltab0_960 ;

__attribute__((used)) static const pmu1_xtaltab0_t *
bhnd_pmu1_xtaltab0(struct bhnd_pmu_query *sc)
{
 switch (sc->cid.chip_id) {
 case 133:
  return (pmu1_xtaltab0_1760);
 case 132:
  return (pmu1_xtaltab0_1440);
 case 131:
  return (pmu1_xtaltab0_880);
 case 130:
  return (pmu1_xtaltab0_880_4329);
 case 128:
  return (pmu1_xtaltab0_960);
 case 129:
  if (PMU_CST4330_SDIOD_CHIPMODE(sc))
   return (pmu1_xtaltab0_960);
  else
   return (pmu1_xtaltab0_1440);
 default:
  PMU_DEBUG(sc, "bhnd_pmu1_xtaltab0: Unknown chipid %#hx\n",
      sc->cid.chip_id);
  return (((void*)0));
 }
}
