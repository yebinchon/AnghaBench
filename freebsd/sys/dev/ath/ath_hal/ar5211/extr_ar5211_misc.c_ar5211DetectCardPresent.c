
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_macVersion; int ah_macRev; } ;
typedef int HAL_BOOL ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR_SREV ;
 int AR_SREV_ID_M ;
 int AR_SREV_ID_S ;
 int AR_SREV_REVISION_M ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar5211DetectCardPresent(struct ath_hal *ah)
{
 uint16_t macVersion, macRev;
 uint32_t v;






 v = OS_REG_READ(ah, AR_SREV) & AR_SREV_ID_M;
 macVersion = v >> AR_SREV_ID_S;
 macRev = v & AR_SREV_REVISION_M;
 return (AH_PRIVATE(ah)->ah_macVersion == macVersion &&
  AH_PRIVATE(ah)->ah_macRev == macRev);
}
