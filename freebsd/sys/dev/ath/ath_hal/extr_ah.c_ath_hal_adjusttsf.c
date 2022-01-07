
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef scalar_t__ int32_t ;


 int AR_TSF_L32 ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,scalar_t__) ;

void
ath_hal_adjusttsf(struct ath_hal *ah, int32_t tsfdelta)
{

 OS_REG_WRITE(ah, AR_TSF_L32, OS_REG_READ(ah, AR_TSF_L32) + tsfdelta);
}
