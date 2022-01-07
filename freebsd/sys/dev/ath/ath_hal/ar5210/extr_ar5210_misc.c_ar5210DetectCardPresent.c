
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_macRev; } ;
typedef int HAL_BOOL ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR_SREV ;
 int OS_REG_READ (struct ath_hal*,int ) ;

HAL_BOOL
ar5210DetectCardPresent(struct ath_hal *ah)
{





 return (AH_PRIVATE(ah)->ah_macRev == (OS_REG_READ(ah, AR_SREV) & 0xff));
}
