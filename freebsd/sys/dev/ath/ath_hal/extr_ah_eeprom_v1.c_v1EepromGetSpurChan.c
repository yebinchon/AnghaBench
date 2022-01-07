
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AR_NO_SPUR ;

__attribute__((used)) static uint16_t
v1EepromGetSpurChan(struct ath_hal *ah, int ix, HAL_BOOL is2GHz)
{
 return AR_NO_SPUR;
}
