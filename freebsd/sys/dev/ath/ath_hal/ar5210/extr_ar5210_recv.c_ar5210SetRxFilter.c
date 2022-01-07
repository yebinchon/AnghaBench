
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_RX_FILTER ;
 int AR_RX_FILTER_PROMISCUOUS ;
 int HAL_RX_FILTER_PHYRADAR ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar5210SetRxFilter(struct ath_hal *ah, uint32_t bits)
{
 if (bits & HAL_RX_FILTER_PHYRADAR) {

  bits = (bits &~ HAL_RX_FILTER_PHYRADAR) | AR_RX_FILTER_PROMISCUOUS;
 }
 OS_REG_WRITE(ah, AR_RX_FILTER, bits);
}
