
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_TIME_OUT ;
 int AR_TIME_OUT_ACK ;
 int MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int ath_hal_mac_usec (struct ath_hal*,int ) ;

u_int
ar5211GetAckTimeout(struct ath_hal *ah)
{
 u_int clks = MS(OS_REG_READ(ah, AR_TIME_OUT), AR_TIME_OUT_ACK);
 return ath_hal_mac_usec(ah, clks);
}
