
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;
struct TYPE_5__ {int freq; int xf; int wbint; int wbfrac; } ;
typedef TYPE_2__ pmu0_xtaltab0_t ;


 int BHND_CCS_HTAVAIL ;


 int BHND_PMU0_PLL0_PC0_DIV_ARM_88MHZ ;
 int BHND_PMU0_PLL0_PC0_PDIV_FREQ ;
 int BHND_PMU0_PLL0_PC0_PDIV_MASK ;
 int BHND_PMU0_PLL0_PC1_STOP_MOD ;
 int BHND_PMU0_PLL0_PC1_WILD_FRAC ;
 int BHND_PMU0_PLL0_PC1_WILD_FRAC_MASK ;
 int BHND_PMU0_PLL0_PC1_WILD_INT ;
 int BHND_PMU0_PLL0_PC1_WILD_INT_MASK ;
 int BHND_PMU0_PLL0_PC2_WILD_INT ;
 int BHND_PMU0_PLL0_PC2_WILD_INT_MASK ;
 int BHND_PMU0_PLL0_PLLCTL0 ;
 int BHND_PMU0_PLL0_PLLCTL1 ;
 int BHND_PMU0_PLL0_PLLCTL2 ;
 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int ,int) ;
 int BHND_PMU_CTRL ;
 int BHND_PMU_CTRL_ILP_DIV ;
 int BHND_PMU_CTRL_ILP_DIV_MASK ;
 int BHND_PMU_CTRL_XTALFREQ ;
 int BHND_PMU_CTRL_XTALFREQ_MASK ;
 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_MAX_RES_MASK ;
 int BHND_PMU_MIN_RES_MASK ;
 int BHND_PMU_PLL_WRITE (struct bhnd_pmu_softc*,int ,int,int) ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_SET_BITS (int,int ) ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int ,int) ;
 size_t PMU0_XTAL0_DEFAULT ;
 int PMURES_BIT (int ) ;
 int PMU_DEBUG (struct bhnd_pmu_softc*,char*,...) ;
 int PMU_WAIT_CLKST (struct bhnd_pmu_softc*,int ,int ) ;
 int RES4328_BB_PLL_PU ;
 int RES5354_BB_PLL_PU ;
 int bhnd_pmu0_sbclk4328 (struct bhnd_pmu_softc*,int ) ;
 int panic (char*,int) ;
 TYPE_2__* pmu0_xtaltab0 ;
 int tmp ;

__attribute__((used)) static void
bhnd_pmu0_pllinit0(struct bhnd_pmu_softc *sc, uint32_t xtal)
{
 const pmu0_xtaltab0_t *xt;
 uint32_t pll_data, pll_mask;
 uint32_t pll_res;
 uint32_t pmu_ctrl;
 uint32_t xf;


 if (xtal == 0) {
  PMU_DEBUG(sc, "Unspecified xtal frequency, skipping PLL "
      "configuration\n");
  return;
 }


 for (xt = pmu0_xtaltab0; xt->freq; xt ++) {
  if (xt->freq == xtal)
   break;
 }

 if (xt->freq == 0)
  xt = &pmu0_xtaltab0[PMU0_XTAL0_DEFAULT];

 PMU_DEBUG(sc, "XTAL %d.%d MHz (%d)\n", xtal / 1000, xtal % 1000,
     xt->xf);


 pmu_ctrl = BHND_PMU_READ_4(sc, BHND_PMU_CTRL);
 xf = BHND_PMU_GET_BITS(pmu_ctrl, BHND_PMU_CTRL_XTALFREQ);
 if (xf == xt->xf) {
  PMU_DEBUG(sc, "PLL already programmed for %d.%d MHz\n",
           xt->freq / 1000, xt->freq % 1000);
  return;
 }

 if (xf != 0) {
  PMU_DEBUG(sc,
      "Reprogramming PLL for %d.%d MHz (was %d.%dMHz)\n",
      xt->freq / 1000, xt->freq % 1000,
      pmu0_xtaltab0[tmp-1].freq / 1000,
      pmu0_xtaltab0[tmp-1].freq % 1000);
 } else {
  PMU_DEBUG(sc, "Programming PLL for %d.%d MHz\n",
      xt->freq / 1000, xt->freq % 1000);
 }


 switch (sc->cid.chip_id) {
 case 129:
  pll_res = PMURES_BIT(RES4328_BB_PLL_PU);
  break;
 case 128:
  pll_res = PMURES_BIT(RES5354_BB_PLL_PU);
  break;
 default:
  panic("unsupported chipid %#hx\n", sc->cid.chip_id);
 }
 BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK, ~pll_res);
 BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK, ~pll_res);


 PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);

 PMU_DEBUG(sc, "Done masking\n");


 if (xt->freq >= BHND_PMU0_PLL0_PC0_PDIV_FREQ) {
  BHND_PMU_PLL_WRITE(sc, BHND_PMU0_PLL0_PLLCTL0,
      BHND_PMU0_PLL0_PC0_PDIV_MASK, BHND_PMU0_PLL0_PC0_PDIV_MASK);
 } else {
  BHND_PMU_PLL_WRITE(sc, BHND_PMU0_PLL0_PLLCTL0, 0,
      BHND_PMU0_PLL0_PC0_PDIV_MASK);
 }


 pll_data =
     BHND_PMU_SET_BITS(xt->wbint, BHND_PMU0_PLL0_PC1_WILD_INT) |
     BHND_PMU_SET_BITS(xt->wbfrac, BHND_PMU0_PLL0_PC1_WILD_FRAC);

 if (xt->wbfrac == 0) {
  pll_data |= BHND_PMU0_PLL0_PC1_STOP_MOD;
 } else {
  pll_data &= ~BHND_PMU0_PLL0_PC1_STOP_MOD;
 }

 pll_mask =
     BHND_PMU0_PLL0_PC1_WILD_INT_MASK |
     BHND_PMU0_PLL0_PC1_WILD_FRAC_MASK;

 BHND_PMU_PLL_WRITE(sc, BHND_PMU0_PLL0_PLLCTL1, pll_data, pll_mask);


 pll_data = BHND_PMU_SET_BITS(xt->wbint, BHND_PMU0_PLL0_PC2_WILD_INT);
 pll_mask = BHND_PMU0_PLL0_PC2_WILD_INT_MASK;
 BHND_PMU_PLL_WRITE(sc, BHND_PMU0_PLL0_PLLCTL2, pll_data, pll_mask);

 PMU_DEBUG(sc, "Done pll\n");


 pmu_ctrl = BHND_PMU_READ_4(sc, BHND_PMU_CTRL);
 pmu_ctrl &= ~(BHND_PMU_CTRL_ILP_DIV_MASK|BHND_PMU_CTRL_XTALFREQ_MASK);

 pmu_ctrl |= BHND_PMU_SET_BITS(((xt->freq + 127) / 128) - 1,
     BHND_PMU_CTRL_ILP_DIV);
 pmu_ctrl |= BHND_PMU_SET_BITS(xt->xf, BHND_PMU_CTRL_XTALFREQ);

 BHND_PMU_WRITE_4(sc, BHND_PMU_CTRL, pmu_ctrl);
}
