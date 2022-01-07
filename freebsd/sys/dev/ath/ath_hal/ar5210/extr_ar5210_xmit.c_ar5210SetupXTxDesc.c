
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;

HAL_BOOL
ar5210SetupXTxDesc(struct ath_hal *ah, struct ath_desc *ds,
 u_int txRate1, u_int txTries1,
 u_int txRate2, u_int txTries2,
 u_int txRate3, u_int txTries3)
{
 (void) ah; (void) ds;
 (void) txRate1; (void) txTries1;
 (void) txRate2; (void) txTries2;
 (void) txRate3; (void) txTries3;
 return AH_FALSE;
}
