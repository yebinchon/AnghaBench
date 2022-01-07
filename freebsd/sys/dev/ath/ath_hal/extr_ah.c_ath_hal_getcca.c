
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int HAL_CAP_DIAG ;
 scalar_t__ HAL_OK ;
 scalar_t__ ath_hal_getcapability (struct ath_hal*,int ,int ,int*) ;

int
ath_hal_getcca(struct ath_hal *ah)
{
 u_int32_t diag;
 if (ath_hal_getcapability(ah, HAL_CAP_DIAG, 0, &diag) != HAL_OK)
  return 1;
 return ((diag & 0x500000) == 0);
}
