
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ pe_firpwr; scalar_t__ pe_rrssi; scalar_t__ pe_height; scalar_t__ pe_prssi; scalar_t__ pe_inband; int pe_blockradar; int pe_en_relstep_check; int pe_usefir128; int pe_enmaxrssi; int pe_enrelpwr; scalar_t__ pe_relpwr; scalar_t__ pe_relstep; scalar_t__ pe_maxlen; scalar_t__ pe_enabled; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;


 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_ENA ;
 int AR_PHY_RADAR_0_FIRPWR ;
 int AR_PHY_RADAR_0_HEIGHT ;
 int AR_PHY_RADAR_0_INBAND ;
 int AR_PHY_RADAR_0_PRSSI ;
 int AR_PHY_RADAR_0_RRSSI ;
 int AR_PHY_RADAR_2 ;
 int AR_PHY_RADAR_2_BLOCKOFDMWEAK ;
 int AR_PHY_RADAR_2_ENMAXRSSI ;
 int AR_PHY_RADAR_2_ENRELPWRCHK ;
 int AR_PHY_RADAR_2_ENRELSTEPCHK ;
 int AR_PHY_RADAR_2_MAXLEN ;
 int AR_PHY_RADAR_2_RELPWR ;
 int AR_PHY_RADAR_2_RELSTEP ;
 int AR_PHY_RADAR_2_USEFIR128 ;
 scalar_t__ HAL_PHYERR_PARAM_NOVAL ;
 scalar_t__ IS_5413 (struct ath_hal*) ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,scalar_t__) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int SM (scalar_t__,int ) ;

void
ar5212EnableDfs(struct ath_hal *ah, HAL_PHYERR_PARAM *pe)
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
 if (pe->pe_enabled)
  val |= AR_PHY_RADAR_0_ENA;
 else
  val &= ~ AR_PHY_RADAR_0_ENA;

 if (IS_5413(ah)) {

  if (pe->pe_blockradar == 1)
   OS_REG_SET_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_BLOCKOFDMWEAK);
  else
   OS_REG_CLR_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_BLOCKOFDMWEAK);

  if (pe->pe_en_relstep_check == 1)
   OS_REG_SET_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_ENRELSTEPCHK);
  else
   OS_REG_CLR_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_ENRELSTEPCHK);

  if (pe->pe_usefir128 == 1)
   OS_REG_SET_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_USEFIR128);
  else
   OS_REG_CLR_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_USEFIR128);

  if (pe->pe_enmaxrssi == 1)
   OS_REG_SET_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_ENMAXRSSI);
  else
   OS_REG_CLR_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_ENMAXRSSI);

  if (pe->pe_enrelpwr == 1)
   OS_REG_SET_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_ENRELPWRCHK);
  else
   OS_REG_CLR_BIT(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_ENRELPWRCHK);

  if (pe->pe_relpwr != HAL_PHYERR_PARAM_NOVAL)
   OS_REG_RMW_FIELD(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_RELPWR, pe->pe_relpwr);

  if (pe->pe_relstep != HAL_PHYERR_PARAM_NOVAL)
   OS_REG_RMW_FIELD(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_RELSTEP, pe->pe_relstep);

  if (pe->pe_maxlen != HAL_PHYERR_PARAM_NOVAL)
   OS_REG_RMW_FIELD(ah, AR_PHY_RADAR_2,
       AR_PHY_RADAR_2_MAXLEN, pe->pe_maxlen);
 }

 OS_REG_WRITE(ah, AR_PHY_RADAR_0, val);
}
