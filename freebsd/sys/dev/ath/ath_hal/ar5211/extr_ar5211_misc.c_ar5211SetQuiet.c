
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_STATUS ;
typedef int HAL_QUIET_FLAG ;


 int HAL_OK ;

HAL_STATUS
ar5211SetQuiet(struct ath_hal *ah, uint32_t period, uint32_t duration,
    uint32_t next_start, HAL_QUIET_FLAG flags)
{
 return HAL_OK;
}
