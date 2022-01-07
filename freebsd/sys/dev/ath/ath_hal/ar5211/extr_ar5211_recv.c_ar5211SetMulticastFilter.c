
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_hal {int dummy; } ;


 int AR_MCAST_FIL0 ;
 int AR_MCAST_FIL1 ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar5211SetMulticastFilter(struct ath_hal *ah, uint32_t filter0, uint32_t filter1)
{
 OS_REG_WRITE(ah, AR_MCAST_FIL0, filter0);
 OS_REG_WRITE(ah, AR_MCAST_FIL1, filter1);
}
