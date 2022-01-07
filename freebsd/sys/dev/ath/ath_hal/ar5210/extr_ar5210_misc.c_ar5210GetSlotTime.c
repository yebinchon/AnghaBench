
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_SLOT_TIME ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ath_hal_mac_usec (struct ath_hal*,int) ;

u_int
ar5210GetSlotTime(struct ath_hal *ah)
{
 u_int clks = OS_REG_READ(ah, AR_SLOT_TIME) & 0xffff;
 return ath_hal_mac_usec(ah, clks);
}
