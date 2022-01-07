
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_ERR ;
 int AR_PHY_ERR_CCK_TIMING ;
 int AR_PHY_ERR_OFDM_TIMING ;
 int AR_PHY_ERR_RADAR ;
 int AR_RX_FILTER ;
 int HAL_RX_FILTER_PHYERR ;
 int HAL_RX_FILTER_PHYRADAR ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5416GetRxFilter(struct ath_hal *ah)
{
 uint32_t bits = OS_REG_READ(ah, AR_RX_FILTER);
 uint32_t phybits = OS_REG_READ(ah, AR_PHY_ERR);

 if (phybits & AR_PHY_ERR_RADAR)
  bits |= HAL_RX_FILTER_PHYRADAR;
 if (phybits & (AR_PHY_ERR_OFDM_TIMING | AR_PHY_ERR_CCK_TIMING))
  bits |= HAL_RX_FILTER_PHYERR;
 return bits;
}
