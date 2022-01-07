
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_TIMEOUT ;
 int ath_hal_waitfor (struct ath_hal*,int ,int ,int ,int ) ;

HAL_BOOL
ath_hal_wait(struct ath_hal *ah, u_int reg, uint32_t mask, uint32_t val)
{

 return ath_hal_waitfor(ah, reg, mask, val, 5000);

}
