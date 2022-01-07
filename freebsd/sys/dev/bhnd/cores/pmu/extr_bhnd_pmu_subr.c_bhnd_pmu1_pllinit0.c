
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int chip_id; scalar_t__ chip_rev; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; int query; } ;
struct TYPE_5__ {int fref; int xf; int p1div; int p2div; int ndiv_frac; int ndiv_int; } ;
typedef TYPE_2__ pmu1_xtaltab0_t ;


 int BHND_CCS_HTAVAIL ;





 int BHND_PMU1_PLL0_CHIPCTL2 ;
 int BHND_PMU1_PLL0_PC0_BYPASS_SDMOD ;
 int BHND_PMU1_PLL0_PC0_BYPASS_SDMOD_MASK ;
 int BHND_PMU1_PLL0_PC0_P1DIV ;
 int BHND_PMU1_PLL0_PC0_P1DIV_MASK ;
 int BHND_PMU1_PLL0_PC0_P2DIV ;
 int BHND_PMU1_PLL0_PC0_P2DIV_MASK ;
 int BHND_PMU1_PLL0_PC2_NDIV_INT ;
 int BHND_PMU1_PLL0_PC2_NDIV_INT_MASK ;
 int BHND_PMU1_PLL0_PC2_NDIV_MODE ;
 int BHND_PMU1_PLL0_PC2_NDIV_MODE_INT ;
 int BHND_PMU1_PLL0_PC2_NDIV_MODE_MASH ;
 int BHND_PMU1_PLL0_PC2_NDIV_MODE_MASK ;
 int BHND_PMU1_PLL0_PC2_NDIV_MODE_MFB ;
 int BHND_PMU1_PLL0_PC3_NDIV_FRAC ;
 int BHND_PMU1_PLL0_PC3_NDIV_FRAC_MASK ;
 int BHND_PMU1_PLL0_PC4_KVCO_XS ;
 int BHND_PMU1_PLL0_PC4_KVCO_XS_MASK ;
 int BHND_PMU1_PLL0_PC5_CLK_DRV ;
 int BHND_PMU1_PLL0_PC5_CLK_DRV_MASK ;
 int BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32 ;
 int BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32_MASK ;
 int BHND_PMU1_PLL0_PC5_VCO_RNG ;
 int BHND_PMU1_PLL0_PC5_VCO_RNG_MASK ;
 int BHND_PMU1_PLL0_PLLCTL0 ;
 int BHND_PMU1_PLL0_PLLCTL1 ;
 int BHND_PMU1_PLL0_PLLCTL2 ;
 int BHND_PMU1_PLL0_PLLCTL3 ;
 int BHND_PMU1_PLL0_PLLCTL4 ;
 int BHND_PMU1_PLL0_PLLCTL5 ;
 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int,int) ;
 int BHND_PMU_CCTRL4319USB_24MHZ_PLL_SEL ;
 int BHND_PMU_CCTRL4319USB_48MHZ_PLL_SEL ;
 int BHND_PMU_CCTRL4319USB_XTAL_SEL ;
 int BHND_PMU_CCTRL4319USB_XTAL_SEL_MASK ;
 int BHND_PMU_CCTRL_WRITE (struct bhnd_pmu_softc*,int ,int,int ) ;
 int BHND_PMU_CLKSTRETCH ;
 int BHND_PMU_CTRL ;
 int BHND_PMU_CTRL_HT_REQ_EN ;
 int BHND_PMU_CTRL_ILP_DIV ;
 int BHND_PMU_CTRL_ILP_DIV_MASK ;
 int BHND_PMU_CTRL_PLL_PLLCTL_UPD ;
 int BHND_PMU_CTRL_XTALFREQ ;
 int BHND_PMU_CTRL_XTALFREQ_MASK ;
 int BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_MASK ;
 int BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_VAL ;
 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_MAX_RES_MASK ;
 int BHND_PMU_MIN_RES_MASK ;
 int BHND_PMU_OR_4 (struct bhnd_pmu_softc*,int,int ) ;
 int BHND_PMU_PLL_READ (struct bhnd_pmu_softc*,int) ;
 int BHND_PMU_PLL_WRITE (struct bhnd_pmu_softc*,int,int,int) ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int) ;
 int BHND_PMU_REV (struct bhnd_pmu_softc*) ;
 int BHND_PMU_SET_BITS (int,int ) ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int,int) ;
 int DELAY (int) ;
 int PMURES_BIT (int ) ;
 int PMU_DEBUG (struct bhnd_pmu_softc*,char*,...) ;
 int PMU_LOG (struct bhnd_pmu_softc*,char*,int,int) ;
 int PMU_WAIT_CLKST (struct bhnd_pmu_softc*,int ,int ) ;
 int RES4319_BBPLL_PWRSW_PU ;
 int RES4319_HT_AVAIL ;
 int RES4325_BBPLL_PWRSW_PU ;
 int RES4325_HT_AVAIL ;
 int RES4329_BBPLL_PWRSW_PU ;
 int RES4329_HT_AVAIL ;
 int RES4330_HT_AVAIL ;
 int RES4330_MACPHY_CLKAVAIL ;
 int RES4336_HT_AVAIL ;
 int RES4336_MACPHY_CLKAVAIL ;

 int XTAL_FREQ_30000MHZ ;

 int bhnd_pmu1_pllfvco0 (int *) ;
 TYPE_2__* bhnd_pmu1_xtaltab0 (int *) ;
 int bhnd_pmu_set_4330_plldivs (struct bhnd_pmu_softc*) ;
 int panic (char*,int) ;

__attribute__((used)) static void
bhnd_pmu1_pllinit0(struct bhnd_pmu_softc *sc, uint32_t xtal)
{
 const pmu1_xtaltab0_t *xt;
 uint32_t buf_strength;
 uint32_t plladdr, plldata, pllmask;
 uint32_t pmuctrl;
 uint32_t FVCO;
 uint8_t ndiv_mode;

 FVCO = bhnd_pmu1_pllfvco0(&sc->query) / 1000;
 buf_strength = 0;
 ndiv_mode = 1;


 if (xtal == 0) {
  PMU_DEBUG(sc, "Unspecified xtal frequency, skipping PLL "
      "configuration\n");
  return;
 }


 for (xt = bhnd_pmu1_xtaltab0(&sc->query); xt != ((void*)0) && xt->fref != 0;
     xt++)
 {
  if (xt->fref == xtal)
   break;
 }




 if (xt == ((void*)0) || xt->fref == 0) {
  PMU_LOG(sc, "Unsupported XTAL frequency %d.%dMHz, skipping PLL "
      "configuration\n", xtal / 1000, xtal % 1000);
  return;
 }



 pmuctrl = BHND_PMU_READ_4(sc, BHND_PMU_CTRL);
 if (BHND_PMU_GET_BITS(pmuctrl, BHND_PMU_CTRL_XTALFREQ) == xt->xf &&
     sc->cid.chip_id != 134 &&
     sc->cid.chip_id != 131)
 {
  PMU_DEBUG(sc, "PLL already programmed for %d.%dMHz\n",
      xt->fref / 1000, xt->fref % 1000);
  return;
 }

 PMU_DEBUG(sc, "XTAL %d.%dMHz (%d)\n", xtal / 1000, xtal % 1000, xt->xf);
 PMU_DEBUG(sc, "Programming PLL for %d.%dMHz\n", xt->fref / 1000,
   xt->fref % 1000);

 switch (sc->cid.chip_id) {
 case 133:

  buf_strength = 0x222222;

  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK,
   ~(PMURES_BIT(RES4325_BBPLL_PWRSW_PU) |
     PMURES_BIT(RES4325_HT_AVAIL)));
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK,
   ~(PMURES_BIT(RES4325_BBPLL_PWRSW_PU) |
     PMURES_BIT(RES4325_HT_AVAIL)));


  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);
  break;

 case 132:

  buf_strength = 0x888888;

  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK,
   ~(PMURES_BIT(RES4329_BBPLL_PWRSW_PU) |
     PMURES_BIT(RES4329_HT_AVAIL)));
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK,
   ~(PMURES_BIT(RES4329_BBPLL_PWRSW_PU) |
     PMURES_BIT(RES4329_HT_AVAIL)));


  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);


  plladdr = BHND_PMU1_PLL0_PLLCTL4;
  if (xt->fref == 38400)
   plldata = 0x200024C0;
  else if (xt->fref == 37400)
   plldata = 0x20004500;
  else if (xt->fref == 26000)
   plldata = 0x200024C0;
  else
   plldata = 0x200005C0;

  BHND_PMU_PLL_WRITE(sc, plladdr, plldata, ~0);


  plladdr = BHND_PMU1_PLL0_PLLCTL5;

  plldata = BHND_PMU_PLL_READ(sc, plladdr);
  plldata &= BHND_PMU1_PLL0_PC5_CLK_DRV_MASK;

  if (xt->fref == 38400 ||
      xt->fref == 37400 ||
      xt->fref == 26000) {
   plldata |= 0x15;
  } else {
   plldata |= 0x25;
  }

  BHND_PMU_PLL_WRITE(sc, plladdr, plldata, ~0);
  break;

 case 134:

  buf_strength = 0x222222;






  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK,
   ~(PMURES_BIT(RES4319_HT_AVAIL)));
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK,
   ~(PMURES_BIT(RES4319_HT_AVAIL)));

  DELAY(100);
  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK,
   ~(PMURES_BIT(RES4319_BBPLL_PWRSW_PU)));
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK,
   ~(PMURES_BIT(RES4319_BBPLL_PWRSW_PU)));

  DELAY(100);


  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);

  plldata = 0x200005c0;
  BHND_PMU_PLL_WRITE(sc, BHND_PMU1_PLL0_PLLCTL4, plldata, ~0);
  break;

 case 130:
  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK,
   ~(PMURES_BIT(RES4336_HT_AVAIL) |
     PMURES_BIT(RES4336_MACPHY_CLKAVAIL)));
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK,
   ~(PMURES_BIT(RES4336_HT_AVAIL) |
     PMURES_BIT(RES4336_MACPHY_CLKAVAIL)));
  DELAY(100);


  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);

  break;

 case 131:
  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK,
   ~(PMURES_BIT(RES4330_HT_AVAIL) |
     PMURES_BIT(RES4330_MACPHY_CLKAVAIL)));
  BHND_PMU_AND_4(sc, BHND_PMU_MAX_RES_MASK,
   ~(PMURES_BIT(RES4330_HT_AVAIL) |
     PMURES_BIT(RES4330_MACPHY_CLKAVAIL)));
  DELAY(100);


  PMU_WAIT_CLKST(sc, 0, BHND_CCS_HTAVAIL);

  break;

 default:
  panic("unsupported chipid %#hx\n", sc->cid.chip_id);
 }

 PMU_DEBUG(sc, "Done masking\n");


 plldata =
     BHND_PMU_SET_BITS(xt->p1div, BHND_PMU1_PLL0_PC0_P1DIV) |
     BHND_PMU_SET_BITS(xt->p2div, BHND_PMU1_PLL0_PC0_P2DIV);
 pllmask = BHND_PMU1_PLL0_PC0_P1DIV_MASK|BHND_PMU1_PLL0_PC0_P2DIV_MASK;

 if (sc->cid.chip_id == 134) {
  plldata &= ~(BHND_PMU1_PLL0_PC0_BYPASS_SDMOD_MASK);
  pllmask |= BHND_PMU1_PLL0_PC0_BYPASS_SDMOD_MASK;
  if (!xt->ndiv_frac) {
   plldata |= BHND_PMU_SET_BITS(1,
       BHND_PMU1_PLL0_PC0_BYPASS_SDMOD);
  }
 }

 BHND_PMU_PLL_WRITE(sc, BHND_PMU1_PLL0_PLLCTL0, plldata, pllmask);


 if (sc->cid.chip_id == 131)
  bhnd_pmu_set_4330_plldivs(sc);

 if (sc->cid.chip_id == 132 && sc->cid.chip_rev == 0) {
  BHND_PMU_PLL_WRITE(sc, BHND_PMU1_PLL0_PLLCTL1,
      BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_VAL,
      BHND_PMU_DOT11MAC_880MHZ_CLK_DIVISOR_MASK);
 }


 if (sc->cid.chip_id == 130 ||
     sc->cid.chip_id == 131)
 {
  ndiv_mode = BHND_PMU1_PLL0_PC2_NDIV_MODE_MFB;
 } else if (sc->cid.chip_id == 134) {
  if (!(xt->ndiv_frac))
   ndiv_mode = BHND_PMU1_PLL0_PC2_NDIV_MODE_INT;
  else
   ndiv_mode = BHND_PMU1_PLL0_PC2_NDIV_MODE_MFB;
 } else {
  ndiv_mode = BHND_PMU1_PLL0_PC2_NDIV_MODE_MASH;
 }


 BHND_PMU_PLL_WRITE(sc, BHND_PMU1_PLL0_PLLCTL2,
     BHND_PMU_SET_BITS(xt->ndiv_int, BHND_PMU1_PLL0_PC2_NDIV_INT) |
     BHND_PMU_SET_BITS(ndiv_mode, BHND_PMU1_PLL0_PC2_NDIV_MODE),
     BHND_PMU1_PLL0_PC2_NDIV_INT_MASK |
     BHND_PMU1_PLL0_PC2_NDIV_MODE_MASK);


 BHND_PMU_PLL_WRITE(sc, BHND_PMU1_PLL0_PLLCTL3,
     BHND_PMU_SET_BITS(xt->ndiv_frac, BHND_PMU1_PLL0_PC3_NDIV_FRAC),
     BHND_PMU1_PLL0_PC3_NDIV_FRAC_MASK);


 if (sc->cid.chip_id == 134) {
  uint8_t xs;

  if (!xt->ndiv_frac)
          plldata = 0x200005c0;
  else
          plldata = 0x202C2820;

  if (FVCO < 1600)
   xs = 4;
  else
          xs = 7;

  plldata &= ~(BHND_PMU1_PLL0_PC4_KVCO_XS_MASK);
  plldata |= BHND_PMU_SET_BITS(xs, BHND_PMU1_PLL0_PC4_KVCO_XS);
  BHND_PMU_WRITE_4(sc, BHND_PMU1_PLL0_PLLCTL4, plldata);
 }


 if (buf_strength) {
  PMU_DEBUG(sc, "Adjusting PLL buffer drive strength: %x\n",
      buf_strength);

  plldata = BHND_PMU_SET_BITS(buf_strength,
      BHND_PMU1_PLL0_PC5_CLK_DRV);
  pllmask = BHND_PMU1_PLL0_PC5_CLK_DRV_MASK;

  if (sc->cid.chip_id == 134) {
   pllmask |=
       BHND_PMU1_PLL0_PC5_VCO_RNG_MASK |
       BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32_MASK;

   if (!xt->ndiv_frac) {
    plldata |= BHND_PMU_SET_BITS(0x25,
        BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32);
   } else {
    plldata |= BHND_PMU_SET_BITS(0x15,
        BHND_PMU1_PLL0_PC5_PLL_CTRL_37_32);
   }

   if (FVCO >= 1600) {
    plldata |= BHND_PMU_SET_BITS(0x1,
        BHND_PMU1_PLL0_PC5_VCO_RNG);
   }
  }

  BHND_PMU_PLL_WRITE(sc, BHND_PMU1_PLL0_PLLCTL5, plldata,
      pllmask);
 }

 PMU_DEBUG(sc, "Done pll\n");




 if (sc->cid.chip_id == 134 &&
     xt->fref != XTAL_FREQ_30000MHZ)
 {
  uint32_t pll_sel;

  switch (xt->fref) {
  case 129:
   pll_sel = BHND_PMU_CCTRL4319USB_24MHZ_PLL_SEL;
   break;
  case 128:
   pll_sel = BHND_PMU_CCTRL4319USB_48MHZ_PLL_SEL;
   break;
  default:
   panic("unsupported 4319USB XTAL frequency: %hu\n",
       xt->fref);
  }

  BHND_PMU_CCTRL_WRITE(sc, BHND_PMU1_PLL0_CHIPCTL2,
      BHND_PMU_SET_BITS(pll_sel, BHND_PMU_CCTRL4319USB_XTAL_SEL),
      BHND_PMU_CCTRL4319USB_XTAL_SEL_MASK);
 }


 if (BHND_PMU_REV(sc) >= 2)
  BHND_PMU_OR_4(sc, BHND_PMU_CTRL, BHND_PMU_CTRL_PLL_PLLCTL_UPD);


 pmuctrl = BHND_PMU_READ_4(sc, BHND_PMU_CTRL);
 pmuctrl &= ~(BHND_PMU_CTRL_ILP_DIV_MASK | BHND_PMU_CTRL_XTALFREQ_MASK);
 pmuctrl |= BHND_PMU_SET_BITS(((xt->fref + 127) / 128) - 1,
     BHND_PMU_CTRL_ILP_DIV);
 pmuctrl |= BHND_PMU_SET_BITS(xt->xf, BHND_PMU_CTRL_XTALFREQ);

 if (sc->cid.chip_id == 132 && sc->cid.chip_rev == 0) {

  BHND_PMU_AND_4(sc, BHND_PMU_CLKSTRETCH, ~BHND_PMU_CLKSTRETCH);
  pmuctrl &= ~BHND_PMU_CTRL_HT_REQ_EN;
 }

 BHND_PMU_WRITE_4(sc, BHND_PMU_CTRL, pmuctrl);
}
