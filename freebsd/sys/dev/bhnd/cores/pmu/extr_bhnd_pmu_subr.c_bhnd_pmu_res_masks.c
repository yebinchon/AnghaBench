
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int chip_id; int chip_rev; } ;
struct TYPE_3__ {int board_flags; int board_type; } ;
struct bhnd_pmu_softc {int caps; int chipc_dev; TYPE_2__ cid; TYPE_1__ board; } ;


 int BHND_ATTACH_NATIVE ;
 int BHND_BFL_BUCKBOOST ;


 int BHND_CHIPC_READ_CHIPST (int ) ;
 int BHND_NVAR_RMAX ;
 int BHND_NVAR_RMIN ;
 int BHND_PMU_CAP_RC ;
 void* BHND_PMU_GET_BITS (int,int ) ;
 int CHIPC_CST4325_PMUTOP_2B ;
 int CHIPC_CST4325_SPROM_OTP_SEL ;
 int CHIPC_CST4329_SPROM_OTP_SEL ;
 int CHIPC_CST_OTP_PWRDN ;
 int ENOENT ;
 int PMURES_BIT (int ) ;
 int PMU_DEBUG (struct bhnd_pmu_softc*,char*,int) ;
 int PMU_LOG (struct bhnd_pmu_softc*,char*,int ,int) ;
 int RES4313_ALP_AVAIL_RSRC ;
 int RES4313_BB_PLL_PWRSW_RSRC ;
 int RES4313_BB_PU_RSRC ;
 int RES4313_XTAL_PU_RSRC ;
 int RES4319_CBUCK_LPOM ;
 int RES4319_CLDO_PU ;
 int RES4322_ALP_AVAIL ;
 int RES4322_HT_PHY_AVAIL ;
 int RES4322_HT_SI_AVAIL ;
 int RES4322_OTP_PU ;
 int RES4322_PHY_PLL_ON ;
 int RES4322_RF_LDO ;
 int RES4322_SI_PLL_ON ;
 int RES4322_XTAL_PU ;
 int RES4325B0_CBUCK_LPOM ;
 int RES4325B0_CLDO_PU ;
 int RES4325_BUCK_BOOST_BURST ;
 int RES4325_OTP_PU ;
 int RES4328_BB_SWITCHER_PWM ;
 int RES4328_EXT_SWITCHER_PWM ;
 int RES4328_XTAL_EN ;
 int RES4329_CBUCK_LPOM ;
 int RES4329_CLDO_PU ;
 int RES4329_LNLDO1_PU ;
 int RES4329_OTP_PU ;
 int RES4330_CBUCK_LPOM ;
 int RES4330_CLDO_PU ;
 int RES4330_DIS_INT_RESET_PD ;
 int RES4330_LDO3P3_PU ;
 int RES4330_OTP_PU ;
 int RES4336_CBUCK_LPOM ;
 int RES4336_CLDO_PU ;
 int RES4336_DIS_INT_RESET_PD ;
 int RES4336_LDO3P3_PU ;
 int RES4336_OTP_PU ;
 int bhnd_get_attach_type (int ) ;
 int bhnd_nvram_getvar_uint32 (int ,int ,int*) ;
 int bhnd_pmu_res_depfltr_ncb (struct bhnd_pmu_softc*) ;

__attribute__((used)) static int
bhnd_pmu_res_masks(struct bhnd_pmu_softc *sc, uint32_t *pmin, uint32_t *pmax)
{
 uint32_t max_mask, min_mask;
 uint32_t chipst, otpsel;
 uint32_t nval;
 uint8_t rsrcs;
 int error;

 max_mask = 0;
 min_mask = 0;


 rsrcs = BHND_PMU_GET_BITS(sc->caps, BHND_PMU_CAP_RC);


 switch (sc->cid.chip_id) {
 case 139:

  if (!bhnd_pmu_res_depfltr_ncb(sc))
   min_mask |= PMURES_BIT(RES4325B0_CBUCK_LPOM);

  chipst = BHND_CHIPC_READ_CHIPST(sc->chipc_dev);
  if (BHND_PMU_GET_BITS(chipst, CHIPC_CST4325_PMUTOP_2B))
   min_mask |= PMURES_BIT(RES4325B0_CLDO_PU);


  otpsel = BHND_PMU_GET_BITS(chipst, CHIPC_CST4325_SPROM_OTP_SEL);
  if (otpsel != CHIPC_CST_OTP_PWRDN)
   min_mask |= PMURES_BIT(RES4325_OTP_PU);


  if (sc->board.board_flags & BHND_BFL_BUCKBOOST) {
   switch (sc->board.board_type) {
   case 157:
   case 158:
    min_mask |= PMURES_BIT(
        RES4325_BUCK_BOOST_BURST);
    break;
   }
  }


  max_mask = ~(~0 << rsrcs);
  break;

 case 154:

  min_mask = 0xcbb;





  break;

 case 151:
 case 150:
 case 145:
 case 133:
  if (sc->cid.chip_rev >= 2)
   break;


  min_mask = PMURES_BIT(RES4322_RF_LDO) |
      PMURES_BIT(RES4322_XTAL_PU) |
      PMURES_BIT(RES4322_ALP_AVAIL);

  if (bhnd_get_attach_type(sc->chipc_dev) == BHND_ATTACH_NATIVE) {
   min_mask |=
       PMURES_BIT(RES4322_SI_PLL_ON) |
       PMURES_BIT(RES4322_HT_SI_AVAIL) |
       PMURES_BIT(RES4322_PHY_PLL_ON) |
       PMURES_BIT(RES4322_OTP_PU) |
       PMURES_BIT(RES4322_HT_PHY_AVAIL);
   max_mask = 0x1ff;
  }
  break;

 case 149:
 case 156:
 case 155:
 case 148:
 case 147:
 case 131:
 case 146:
 case 132:
 case 143:
 case 142:
 case 140:
 case 144:
 case 141:
 case 135:
 case 130:
 case 128:

  break;

 case 138:
  min_mask =
      PMURES_BIT(RES4328_BB_SWITCHER_PWM) |
      PMURES_BIT(RES4328_EXT_SWITCHER_PWM) |
      PMURES_BIT(RES4328_XTAL_EN);
  max_mask = 0xfffffff;
  break;

 case 129:

  max_mask = 0xfffffff;
  break;

 case 137:

  if (sc->cid.chip_rev >= 0x2) {
   min_mask =
       PMURES_BIT(RES4329_CBUCK_LPOM) |
       PMURES_BIT(RES4329_LNLDO1_PU) |
       PMURES_BIT(RES4329_CLDO_PU);
  } else {
   min_mask =
       PMURES_BIT(RES4329_CBUCK_LPOM) |
       PMURES_BIT(RES4329_CLDO_PU);
  }


  chipst = BHND_CHIPC_READ_CHIPST(sc->chipc_dev);
  otpsel = BHND_PMU_GET_BITS(chipst, CHIPC_CST4329_SPROM_OTP_SEL);
  if (otpsel != CHIPC_CST_OTP_PWRDN)
   min_mask |= PMURES_BIT(RES4329_OTP_PU);


  max_mask = 0x3ff63e;
  break;

 case 152:

  min_mask = PMURES_BIT(RES4319_CBUCK_LPOM) |
      PMURES_BIT(RES4319_CLDO_PU);


  max_mask = ~(~0 << rsrcs);
  break;

 case 134:

  min_mask =
      PMURES_BIT(RES4336_CBUCK_LPOM) |
      PMURES_BIT(RES4336_CLDO_PU) |
      PMURES_BIT(RES4336_LDO3P3_PU) |
      PMURES_BIT(RES4336_OTP_PU) |
      PMURES_BIT(RES4336_DIS_INT_RESET_PD);

  max_mask = 0x1ffffff;
  break;

 case 136:

  min_mask =
      PMURES_BIT(RES4330_CBUCK_LPOM) | PMURES_BIT(RES4330_CLDO_PU)
      | PMURES_BIT(RES4330_DIS_INT_RESET_PD) |
      PMURES_BIT(RES4330_LDO3P3_PU) | PMURES_BIT(RES4330_OTP_PU);

  max_mask = 0xfffffff;
  break;

 case 153:
  min_mask = PMURES_BIT(RES4313_BB_PU_RSRC) |
      PMURES_BIT(RES4313_XTAL_PU_RSRC) |
      PMURES_BIT(RES4313_ALP_AVAIL_RSRC) |
      PMURES_BIT(RES4313_BB_PLL_PWRSW_RSRC);
  max_mask = 0xffff;
  break;
 default:
  break;
 }


 error = bhnd_nvram_getvar_uint32(sc->chipc_dev, BHND_NVAR_RMIN, &nval);
 if (error && error != ENOENT) {
  PMU_LOG(sc, "NVRAM error reading %s: %d\n",
      BHND_NVAR_RMIN, error);
  return (error);
 } else if (!error) {
  PMU_DEBUG(sc, "Applying rmin=%#x to min_mask\n", nval);
  min_mask = nval;
 }


 error = bhnd_nvram_getvar_uint32(sc->chipc_dev, BHND_NVAR_RMAX, &nval);
 if (error && error != ENOENT) {
  PMU_LOG(sc, "NVRAM error reading %s: %d\n",
      BHND_NVAR_RMAX, error);
  return (error);
 } else if (!error) {
  PMU_DEBUG(sc, "Applying rmax=%#x to max_mask\n", nval);
  min_mask = nval;
 }

 if (pmin != ((void*)0))
  *pmin = min_mask;

 if (pmax != ((void*)0))
  *pmax = max_mask;

 return (0);
}
