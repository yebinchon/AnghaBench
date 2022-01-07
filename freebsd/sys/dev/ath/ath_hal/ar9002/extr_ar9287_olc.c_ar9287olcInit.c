
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR9287_AN_TXPC0 ;
 int AR9287_AN_TXPC0_TXPCMODE ;
 int AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE ;
 int AR_PHY_TX_PWRCTRL9 ;
 int AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL ;
 int OS_A_REG_RMW_FIELD (struct ath_hal*,int ,int ,int ) ;
 int OS_DELAY (int) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int ) ;

void
ar9287olcInit(struct ath_hal *ah)
{
 OS_REG_SET_BIT(ah, AR_PHY_TX_PWRCTRL9,
     AR_PHY_TX_PWRCTRL9_RES_DC_REMOVAL);
 OS_A_REG_RMW_FIELD(ah, AR9287_AN_TXPC0,
     AR9287_AN_TXPC0_TXPCMODE,
     AR9287_AN_TXPC0_TXPCMODE_TEMPSENSE);
 OS_DELAY(100);
}
