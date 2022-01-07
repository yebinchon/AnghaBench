
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_query {TYPE_1__ cid; } ;
typedef int pmu1_xtaltab0_t ;
 size_t PMU1_XTALTAB0_1440_30000K ;
 size_t PMU1_XTALTAB0_1440_37400K ;
 size_t PMU1_XTALTAB0_1760_26000K ;
 size_t PMU1_XTALTAB0_880_26000K ;
 size_t PMU1_XTALTAB0_880_38400K ;
 size_t PMU1_XTALTAB0_960_26000K ;
 size_t PMU1_XTALTAB0_960_37400K ;
 int PMU_CST4330_SDIOD_CHIPMODE (struct bhnd_pmu_query*) ;
 int PMU_DEBUG (struct bhnd_pmu_query*,char*,int) ;
 int const* pmu1_xtaltab0_1440 ;
 int const* pmu1_xtaltab0_1760 ;
 int const* pmu1_xtaltab0_880 ;
 int const* pmu1_xtaltab0_880_4329 ;
 int const* pmu1_xtaltab0_960 ;

__attribute__((used)) static const pmu1_xtaltab0_t *
bhnd_pmu1_xtaldef0(struct bhnd_pmu_query *sc)
{
 switch (sc->cid.chip_id) {
 case 133:

  return (&pmu1_xtaltab0_1760[PMU1_XTALTAB0_1760_26000K]);
 case 132:

  return (&pmu1_xtaltab0_1440[PMU1_XTALTAB0_1440_30000K]);
 case 131:

  return (&pmu1_xtaltab0_880[PMU1_XTALTAB0_880_26000K]);
 case 130:

  return (&pmu1_xtaltab0_880_4329[PMU1_XTALTAB0_880_38400K]);
 case 128:

  return (&pmu1_xtaltab0_960[PMU1_XTALTAB0_960_26000K]);
 case 129:

  if (PMU_CST4330_SDIOD_CHIPMODE(sc))
   return (&pmu1_xtaltab0_960[PMU1_XTALTAB0_960_37400K]);
  else
   return (&pmu1_xtaltab0_1440[PMU1_XTALTAB0_1440_37400K]);
 default:
  PMU_DEBUG(sc, "bhnd_pmu1_xtaldef0: Unknown chipid %#hx\n",
      sc->cid.chip_id);
  return (((void*)0));
 }
}
