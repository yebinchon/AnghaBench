
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_rfsilent; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR_EEPROM_RFSILENT_GPIO_SEL ;
 int AR_EEPROM_RFSILENT_POLARITY ;
 int AR_PHY (int ) ;
 int MS (int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int ath_hal_gpioCfgInput (struct ath_hal*,int) ;
 int ath_hal_gpioGet (struct ath_hal*,int) ;
 int ath_hal_gpioSetIntr (struct ath_hal*,int,int) ;

void
ar5212EnableRfKill(struct ath_hal *ah)
{
 uint16_t rfsilent = AH_PRIVATE(ah)->ah_rfsilent;
 int select = MS(rfsilent, AR_EEPROM_RFSILENT_GPIO_SEL);
 int polarity = MS(rfsilent, AR_EEPROM_RFSILENT_POLARITY);





 ath_hal_gpioCfgInput(ah, select);
 OS_REG_SET_BIT(ah, AR_PHY(0), 0x00002000);
 ath_hal_gpioSetIntr(ah, select,
     (ath_hal_gpioGet(ah, select) == polarity ? !polarity : polarity));
}
