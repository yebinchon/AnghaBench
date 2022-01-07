
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int pe_firpwr; int pe_enabled; int pe_relpwr; int pe_relstep; int pe_maxlen; int pe_usefir128; int pe_blockradar; int pe_enmaxrssi; int pe_enrelpwr; int pe_en_relstep_check; int pe_extchannel; void* pe_inband; void* pe_prssi; void* pe_height; void* pe_rrssi; } ;
typedef TYPE_1__ HAL_PHYERR_PARAM ;


 int AH_FALSE ;
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
 scalar_t__ IS_5413 (struct ath_hal*) ;
 void* MS (int,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

void
ar5212GetDfsThresh(struct ath_hal *ah, HAL_PHYERR_PARAM *pe)
{
 uint32_t val,temp;

 val = OS_REG_READ(ah, AR_PHY_RADAR_0);

 temp = MS(val,AR_PHY_RADAR_0_FIRPWR);
 temp |= 0xFFFFFF80;
 pe->pe_firpwr = temp;
 pe->pe_rrssi = MS(val, AR_PHY_RADAR_0_RRSSI);
 pe->pe_height = MS(val, AR_PHY_RADAR_0_HEIGHT);
 pe->pe_prssi = MS(val, AR_PHY_RADAR_0_PRSSI);
 pe->pe_inband = MS(val, AR_PHY_RADAR_0_INBAND);
 pe->pe_enabled = !! (val & AR_PHY_RADAR_0_ENA);

 pe->pe_relpwr = 0;
 pe->pe_relstep = 0;
 pe->pe_maxlen = 0;
 pe->pe_usefir128 = 0;
 pe->pe_blockradar = 0;
 pe->pe_enmaxrssi = 0;
 pe->pe_enrelpwr = 0;
 pe->pe_en_relstep_check = 0;
 pe->pe_extchannel = AH_FALSE;

 if (IS_5413(ah)) {
  val = OS_REG_READ(ah, AR_PHY_RADAR_2);
  pe->pe_relpwr = !! MS(val, AR_PHY_RADAR_2_RELPWR);
  pe->pe_relstep = !! MS(val, AR_PHY_RADAR_2_RELSTEP);
  pe->pe_maxlen = !! MS(val, AR_PHY_RADAR_2_MAXLEN);

  pe->pe_usefir128 = !! (val & AR_PHY_RADAR_2_USEFIR128);
  pe->pe_blockradar = !! (val & AR_PHY_RADAR_2_BLOCKOFDMWEAK);
  pe->pe_enmaxrssi = !! (val & AR_PHY_RADAR_2_ENMAXRSSI);
  pe->pe_enrelpwr = !! (val & AR_PHY_RADAR_2_ENRELPWRCHK);
  pe->pe_en_relstep_check =
      !! (val & AR_PHY_RADAR_2_ENRELSTEPCHK);
 }
}
