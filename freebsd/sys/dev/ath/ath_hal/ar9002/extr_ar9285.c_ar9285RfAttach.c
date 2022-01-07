
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_getNoiseFloor; } ;
typedef int HAL_STATUS ;
typedef scalar_t__ HAL_BOOL ;


 scalar_t__ AH_FALSE ;
 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 scalar_t__ ar9280RfAttach (struct ath_hal*,int *) ;
 int ar9285GetNoiseFloor ;

HAL_BOOL
ar9285RfAttach(struct ath_hal *ah, HAL_STATUS *status)
{
 if (ar9280RfAttach(ah, status) == AH_FALSE)
  return AH_FALSE;

 AH_PRIVATE(ah)->ah_getNoiseFloor = ar9285GetNoiseFloor;

 return AH_TRUE;
}
