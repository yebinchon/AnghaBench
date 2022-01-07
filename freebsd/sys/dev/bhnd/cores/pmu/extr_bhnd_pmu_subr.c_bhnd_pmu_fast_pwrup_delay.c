
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {int query; TYPE_1__ cid; } ;
 int BHND_PMU_MAX_TRANSITION_DLY ;
 int BHND_PMU_RES4325_HT_AVAIL ;
 int BHND_PMU_RES4329_HT_AVAIL ;
 int BHND_PMU_RES4330_HT_AVAIL ;
 int BHND_PMU_RES4336_HT_AVAIL ;
 int D11SCC_SLOW2FAST_TRANSITION ;
 int bhnd_pmu_ilp_clock (int *) ;
 int bhnd_pmu_res_uptime (struct bhnd_pmu_softc*,int ,int*) ;

int
bhnd_pmu_fast_pwrup_delay(struct bhnd_pmu_softc *sc, u_int *pwrup_delay)
{
 uint32_t ilp;
 uint32_t uptime;
 u_int delay;
 int error;

 switch (sc->cid.chip_id) {
 case 139:
 case 138:
 case 129:
 case 137:
 case 136:
 case 135:
 case 131:
 case 128:
 case 141:
  delay = 3700;
  break;

 case 134:
  error = bhnd_pmu_res_uptime(sc, BHND_PMU_RES4325_HT_AVAIL,
      &uptime);
  if (error)
   return (error);

  ilp = bhnd_pmu_ilp_clock(&sc->query);
  delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
      ((1000000 + ilp - 1) / ilp);
  delay = (11 * delay) / 10;
  break;

 case 133:
  error = bhnd_pmu_res_uptime(sc, BHND_PMU_RES4329_HT_AVAIL,
      &uptime);
  if (error)
   return (error);

  ilp = bhnd_pmu_ilp_clock(&sc->query);
  delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
      ((1000000 + ilp - 1) / ilp);
  delay = (11 * delay) / 10;
  break;

 case 140:
  delay = 3700;
  break;

 case 130:
  error = bhnd_pmu_res_uptime(sc, BHND_PMU_RES4336_HT_AVAIL,
      &uptime);
  if (error)
   return (error);

  ilp = bhnd_pmu_ilp_clock(&sc->query);
  delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
      ((1000000 + ilp - 1) / ilp);
  delay = (11 * delay) / 10;
  break;

 case 132:
  error = bhnd_pmu_res_uptime(sc, BHND_PMU_RES4330_HT_AVAIL,
      &uptime);
  if (error)
   return (error);

  ilp = bhnd_pmu_ilp_clock(&sc->query);
  delay = (uptime + D11SCC_SLOW2FAST_TRANSITION) *
      ((1000000 + ilp - 1) / ilp);
  delay = (11 * delay) / 10;
  break;

 default:
  delay = BHND_PMU_MAX_TRANSITION_DLY;
  break;
 }

 *pwrup_delay = delay;
 return (0);
}
