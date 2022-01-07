
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;
typedef int HAL_ANI_CMD ;


 int AH_FALSE ;

HAL_BOOL
ar5211AniControl(struct ath_hal *ah, HAL_ANI_CMD cmd, int param)
{
 return AH_FALSE;
}
