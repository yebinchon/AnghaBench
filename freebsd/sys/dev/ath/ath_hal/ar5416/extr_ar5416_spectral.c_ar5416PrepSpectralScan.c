
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_ERR ;
 int ENABLE_ALL_PHYERR ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int ar5416DisableRadar (struct ath_hal*) ;

__attribute__((used)) static void
ar5416PrepSpectralScan(struct ath_hal *ah)
{

 ar5416DisableRadar(ah);
 OS_REG_WRITE(ah, AR_PHY_ERR, ENABLE_ALL_PHYERR);
}
