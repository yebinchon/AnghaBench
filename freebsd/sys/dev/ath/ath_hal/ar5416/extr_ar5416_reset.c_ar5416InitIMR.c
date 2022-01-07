
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_5212 {int ah_maskReg; } ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_OPMODE ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AR_IMR ;
 int AR_IMR_BCNMISC ;
 int AR_IMR_MIB ;
 int AR_IMR_RXERR ;
 int AR_IMR_RXINTM ;
 int AR_IMR_RXMINTR ;
 int AR_IMR_RXOK ;
 int AR_IMR_RXORN ;
 int AR_IMR_S2 ;
 int AR_IMR_S2_CST ;
 int AR_IMR_S2_GTT ;
 int AR_IMR_TXERR ;
 int AR_IMR_TXOK ;
 int AR_IMR_TXURN ;
 int AR_INTR_SYNC_CAUSE ;
 int AR_INTR_SYNC_DEFAULT ;
 int AR_INTR_SYNC_ENABLE ;
 int AR_INTR_SYNC_MASK ;
 int AR_SREV_HOWL (struct ath_hal*) ;
 scalar_t__ HAL_M_HOSTAP ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar5416InitIMR(struct ath_hal *ah, HAL_OPMODE opmode)
{
 struct ath_hal_5212 *ahp = AH5212(ah);







        ahp->ah_maskReg = AR_IMR_TXERR | AR_IMR_TXURN
   | AR_IMR_RXERR | AR_IMR_RXORN
                        | AR_IMR_BCNMISC;




 ahp->ah_maskReg |= AR_IMR_RXOK;

 ahp->ah_maskReg |= AR_IMR_TXOK;

 if (opmode == HAL_M_HOSTAP)
  ahp->ah_maskReg |= AR_IMR_MIB;
 OS_REG_WRITE(ah, AR_IMR, ahp->ah_maskReg);
}
