
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
 int AR_PHY_BASE ;
 int MS (int ,int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int ar5211GpioCfgInput (struct ath_hal*,int) ;
 int ar5211GpioGet (struct ath_hal*,int) ;
 int ar5211GpioSetIntr (struct ath_hal*,int,int) ;

void
ar5211EnableRfKill(struct ath_hal *ah)
{
 uint16_t rfsilent = AH_PRIVATE(ah)->ah_rfsilent;
 int select = MS(rfsilent, AR_EEPROM_RFSILENT_GPIO_SEL);
 int polarity = MS(rfsilent, AR_EEPROM_RFSILENT_POLARITY);





 ar5211GpioCfgInput(ah, select);
 OS_REG_SET_BIT(ah, AR_PHY_BASE, 0x00002000);
 ar5211GpioSetIntr(ah, select, (ar5211GpioGet(ah, select) != polarity));
}
