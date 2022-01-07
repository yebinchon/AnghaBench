
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_RX_FILTER ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar5211SetRxFilter(struct ath_hal *ah, uint32_t bits)
{
 OS_REG_WRITE(ah, AR_RX_FILTER, bits);
}
