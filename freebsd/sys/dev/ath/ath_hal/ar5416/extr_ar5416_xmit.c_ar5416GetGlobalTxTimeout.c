
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int AR_GTXTO ;
 int AR_GTXTO_TIMEOUT_LIMIT ;
 int MS (int ,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

u_int
ar5416GetGlobalTxTimeout(struct ath_hal *ah)
{
 return MS(OS_REG_READ(ah, AR_GTXTO), AR_GTXTO_TIMEOUT_LIMIT);
}
