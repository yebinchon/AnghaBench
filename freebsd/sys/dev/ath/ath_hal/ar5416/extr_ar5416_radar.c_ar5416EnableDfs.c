
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ pe_firpwr; scalar_t__ pe_rrssi; scalar_t__ pe_height; scalar_t__ pe_prssi; scalar_t__ pe_inband; int pe_enabled; int pe_usefir128; int pe_enmaxrssi; int pe_blockradar; scalar_t__ pe_relstep; scalar_t__ pe_relpwr; int pe_en_relstep_check; int pe_enrelpwr; scalar_t__ pe_maxlen; int pe_extchannel; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;


 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_ENA ;
 int AR_PHY_RADAR_0_FFT_ENA ;
 int AR_PHY_RADAR_0_FIRPWR ;
 int AR_PHY_RADAR_0_HEIGHT ;
 int AR_PHY_RADAR_0_INBAND ;
 int AR_PHY_RADAR_0_PRSSI ;
 int AR_PHY_RADAR_0_RRSSI ;
 int AR_PHY_RADAR_1 ;
 int AR_PHY_RADAR_1_BLOCK_CHECK ;
 int AR_PHY_RADAR_1_MAXLEN ;
 int AR_PHY_RADAR_1_MAX_RRSSI ;
 int AR_PHY_RADAR_1_RELPWR_ENA ;
 int AR_PHY_RADAR_1_RELPWR_THRESH ;
 int AR_PHY_RADAR_1_RELSTEP_CHECK ;
 int AR_PHY_RADAR_1_RELSTEP_THRESH ;
 int AR_PHY_RADAR_1_USE_FIR128 ;
 int AR_PHY_RADAR_EXT ;
 int AR_PHY_RADAR_EXT_ENA ;
 scalar_t__ HAL_PHYERR_PARAM_NOVAL ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int SM (scalar_t__,int ) ;

void
ar5416EnableDfs(struct ath_hal *ah, HAL_PHYERR_PARAM *pe)
{
 uint32_t val;

 val = OS_REG_READ(ah, AR_PHY_RADAR_0);

 if (pe->pe_firpwr != HAL_PHYERR_PARAM_NOVAL) {
  val &= ~AR_PHY_RADAR_0_FIRPWR;
  val |= SM(pe->pe_firpwr, AR_PHY_RADAR_0_FIRPWR);
 }
 if (pe->pe_rrssi != HAL_PHYERR_PARAM_NOVAL) {
  val &= ~AR_PHY_RADAR_0_RRSSI;
  val |= SM(pe->pe_rrssi, AR_PHY_RADAR_0_RRSSI);
 }
 if (pe->pe_height != HAL_PHYERR_PARAM_NOVAL) {
  val &= ~AR_PHY_RADAR_0_HEIGHT;
  val |= SM(pe->pe_height, AR_PHY_RADAR_0_HEIGHT);
 }
 if (pe->pe_prssi != HAL_PHYERR_PARAM_NOVAL) {
  val &= ~AR_PHY_RADAR_0_PRSSI;
  val |= SM(pe->pe_prssi, AR_PHY_RADAR_0_PRSSI);
 }
 if (pe->pe_inband != HAL_PHYERR_PARAM_NOVAL) {
  val &= ~AR_PHY_RADAR_0_INBAND;
  val |= SM(pe->pe_inband, AR_PHY_RADAR_0_INBAND);
 }


 val |= AR_PHY_RADAR_0_FFT_ENA;
 OS_REG_WRITE(ah, AR_PHY_RADAR_0, val);


 if (pe->pe_enabled == 1)
  OS_REG_SET_BIT(ah, AR_PHY_RADAR_0, AR_PHY_RADAR_0_ENA);
 else if (pe->pe_enabled == 0)
  OS_REG_CLR_BIT(ah, AR_PHY_RADAR_0, AR_PHY_RADAR_0_ENA);

 if (pe->pe_usefir128 == 1)
  OS_REG_SET_BIT(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_USE_FIR128);
 else if (pe->pe_usefir128 == 0)
  OS_REG_CLR_BIT(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_USE_FIR128);

 if (pe->pe_enmaxrssi == 1)
  OS_REG_SET_BIT(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_MAX_RRSSI);
 else if (pe->pe_enmaxrssi == 0)
  OS_REG_CLR_BIT(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_MAX_RRSSI);

 if (pe->pe_blockradar == 1)
  OS_REG_SET_BIT(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_BLOCK_CHECK);
 else if (pe->pe_blockradar == 0)
  OS_REG_CLR_BIT(ah, AR_PHY_RADAR_1, AR_PHY_RADAR_1_BLOCK_CHECK);

 if (pe->pe_relstep != HAL_PHYERR_PARAM_NOVAL) {
  val = OS_REG_READ(ah, AR_PHY_RADAR_1);
  val &= ~AR_PHY_RADAR_1_RELSTEP_THRESH;
  val |= SM(pe->pe_relstep, AR_PHY_RADAR_1_RELSTEP_THRESH);
  OS_REG_WRITE(ah, AR_PHY_RADAR_1, val);
 }
 if (pe->pe_relpwr != HAL_PHYERR_PARAM_NOVAL) {
  val = OS_REG_READ(ah, AR_PHY_RADAR_1);
  val &= ~AR_PHY_RADAR_1_RELPWR_THRESH;
  val |= SM(pe->pe_relpwr, AR_PHY_RADAR_1_RELPWR_THRESH);
  OS_REG_WRITE(ah, AR_PHY_RADAR_1, val);
 }

 if (pe->pe_en_relstep_check == 1)
  OS_REG_SET_BIT(ah, AR_PHY_RADAR_1,
      AR_PHY_RADAR_1_RELSTEP_CHECK);
 else if (pe->pe_en_relstep_check == 0)
  OS_REG_CLR_BIT(ah, AR_PHY_RADAR_1,
      AR_PHY_RADAR_1_RELSTEP_CHECK);

 if (pe->pe_enrelpwr == 1)
  OS_REG_SET_BIT(ah, AR_PHY_RADAR_1,
      AR_PHY_RADAR_1_RELPWR_ENA);
 else if (pe->pe_enrelpwr == 0)
  OS_REG_CLR_BIT(ah, AR_PHY_RADAR_1,
      AR_PHY_RADAR_1_RELPWR_ENA);

 if (pe->pe_maxlen != HAL_PHYERR_PARAM_NOVAL) {
  val = OS_REG_READ(ah, AR_PHY_RADAR_1);
  val &= ~AR_PHY_RADAR_1_MAXLEN;
  val |= SM(pe->pe_maxlen, AR_PHY_RADAR_1_MAXLEN);
  OS_REG_WRITE(ah, AR_PHY_RADAR_1, val);
 }






 if (pe->pe_extchannel == 1)
  OS_REG_SET_BIT(ah, AR_PHY_RADAR_EXT, AR_PHY_RADAR_EXT_ENA);
 else if (pe->pe_extchannel == 0)
  OS_REG_CLR_BIT(ah, AR_PHY_RADAR_EXT, AR_PHY_RADAR_EXT_ENA);
}
