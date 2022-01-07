
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int* ah_ratesArray; } ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_1__* AH5416 (struct ath_hal*) ;
 size_t rate11l ;
 size_t rate11s ;
 size_t rate12mb ;
 size_t rate18mb ;
 size_t rate1l ;
 size_t rate24mb ;
 size_t rate2l ;
 size_t rate2s ;
 size_t rate36mb ;
 size_t rate48mb ;
 size_t rate54mb ;
 size_t rate5_5l ;
 size_t rate5_5s ;
 size_t rate6mb ;
 size_t rate9mb ;
 int rateHt20_0 ;
 int rateHt40_0 ;

__attribute__((used)) static inline int
ar5416RateToRateTable(struct ath_hal *ah, uint8_t rate, HAL_BOOL is_ht40)
{




 switch (rate) {
 case 0x1b:
 case 0x1b | 0x4:
  return (AH5416(ah)->ah_ratesArray[rate1l]);
 case 0x1a:
  return (AH5416(ah)->ah_ratesArray[rate2l]);
 case 0x1a | 0x4:
  return (AH5416(ah)->ah_ratesArray[rate2s]);
 case 0x19:
  return (AH5416(ah)->ah_ratesArray[rate5_5l]);
 case 0x19 | 0x4:
  return (AH5416(ah)->ah_ratesArray[rate5_5s]);
 case 0x18:
  return (AH5416(ah)->ah_ratesArray[rate11l]);
 case 0x18 | 0x4:
  return (AH5416(ah)->ah_ratesArray[rate11s]);
 }


 switch (rate) {
 case 0x0b:
  return (AH5416(ah)->ah_ratesArray[rate6mb]);
 case 0x0f:
  return (AH5416(ah)->ah_ratesArray[rate9mb]);
 case 0x0a:
  return (AH5416(ah)->ah_ratesArray[rate12mb]);
 case 0x0e:
  return (AH5416(ah)->ah_ratesArray[rate18mb]);
 case 0x09:
  return (AH5416(ah)->ah_ratesArray[rate24mb]);
 case 0x0d:
  return (AH5416(ah)->ah_ratesArray[rate36mb]);
 case 0x08:
  return (AH5416(ah)->ah_ratesArray[rate48mb]);
 case 0x0c:
  return (AH5416(ah)->ah_ratesArray[rate54mb]);
 }





 if ((rate & 0x80) && is_ht40) {
  return (AH5416(ah)->ah_ratesArray[rateHt40_0 + (rate & 0x7)]);
 } else if (rate & 0x80) {
  return (AH5416(ah)->ah_ratesArray[rateHt20_0 + (rate & 0x7)]);
 }


 return (AH5416(ah)->ah_ratesArray[rate6mb]);
}
