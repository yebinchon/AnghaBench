
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_SREV_KIWI (struct ath_hal*) ;

__attribute__((used)) static HAL_BOOL
ar9287RfProbe(struct ath_hal *ah)
{
 return (AR_SREV_KIWI(ah));
}
