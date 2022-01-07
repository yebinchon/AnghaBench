
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int chip_id; int chip_rev; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;


 int BHND_CCS_HTAVAIL ;
 int BHND_PMU2_SI_PLL_PLLCTL ;
 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int BHND_PMU_MAX_RES_MASK ;
 int BHND_PMU_MIN_RES_MASK ;
 int BHND_PMU_PLL_WRITE (struct bhnd_pmu_softc*,int ,int,int ) ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_REV (struct bhnd_pmu_softc*) ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int DELAY (int) ;
 int PMURES_BIT (int ) ;
 int PMU_DEBUG (char*,int,int ,int ) ;
 int PMU_WAIT_CLKST (struct bhnd_pmu_softc*,int ,int ) ;
 int RES4322_HT_SI_AVAIL ;
 int RES4322_SI_PLL_ON ;
 int bhnd_pmu0_pllinit0 (struct bhnd_pmu_softc*,int) ;
 int bhnd_pmu1_pllinit0 (struct bhnd_pmu_softc*,int) ;

void
bhnd_pmu_pll_init(struct bhnd_pmu_softc *sc, u_int xtalfreq)
{
 uint32_t max_mask, min_mask;
 uint32_t res_ht, res_pll;

 switch (sc->cid.chip_id) {
 case 159:

  break;
 case 154:
 case 153:
 case 146:
 case 134:
  if (sc->cid.chip_rev != 0)
   break;

  min_mask = BHND_PMU_READ_4(sc, BHND_PMU_MIN_RES_MASK);
  max_mask = BHND_PMU_READ_4(sc, BHND_PMU_MIN_RES_MASK);
  res_ht = PMURES_BIT(RES4322_HT_SI_AVAIL);
  res_pll = PMURES_BIT(RES4322_SI_PLL_ON);


  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK, ~res_ht);
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK, ~res_ht);
  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);


  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK, ~res_pll);
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK, ~res_pll);
  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);

  DELAY(1000);

  BHND_PMU_PLL_WRITE(sc, BHND_PMU2_SI_PLL_PLLCTL, 0x380005c0, ~0);
  DELAY(100);

  BHND_PMU_WRITE_4(sc, BHND_PMU_MAX_RES_MASK, max_mask);
  DELAY(100);
  BHND_PMU_WRITE_4(sc, BHND_PMU_MIN_RES_MASK, min_mask);
  DELAY(100);

  break;
 case 140:
  bhnd_pmu1_pllinit0(sc, xtalfreq);
  break;
 case 139:
  bhnd_pmu0_pllinit0(sc, xtalfreq);
  break;
 case 129:
  if (xtalfreq == 0)
   xtalfreq = 25000;
  bhnd_pmu0_pllinit0(sc, xtalfreq);
  break;
 case 138:
  if (xtalfreq == 0)
   xtalfreq = 38400;
  bhnd_pmu1_pllinit0(sc, xtalfreq);
  break;

 case 158:
 case 152:
 case 161:
 case 160:
 case 151:
 case 150:
 case 133:
 case 132:
 case 149:
 case 144:
 case 143:
 case 141:
 case 145:
 case 142:
 case 136:
 case 130:
 case 157:
 case 148:
 case 147:
 case 131:
 case 128:

  break;

 case 156:
 case 155:
 case 135:
 case 137:
  bhnd_pmu1_pllinit0(sc, xtalfreq);
  break;
 default:
  PMU_DEBUG("No PLL init done for chip %#hx rev %d pmurev %d\n",
      sc->cid.chip_id, sc->cid.chip_rev, BHND_PMU_REV(sc));
  break;
 }
}
