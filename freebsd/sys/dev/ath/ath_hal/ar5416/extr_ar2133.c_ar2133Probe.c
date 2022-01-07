
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 scalar_t__ AR_SREV_HOWL (struct ath_hal*) ;
 scalar_t__ AR_SREV_OWL (struct ath_hal*) ;
 scalar_t__ AR_SREV_SOWL (struct ath_hal*) ;

__attribute__((used)) static HAL_BOOL
ar2133Probe(struct ath_hal *ah)
{
 return (AR_SREV_OWL(ah) || AR_SREV_HOWL(ah) || AR_SREV_SOWL(ah));
}
