
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
 int MS (int ,int ) ;
 int ar5210Gpio0SetIntr (struct ath_hal*,int,int) ;
 int ar5210GpioGet (struct ath_hal*,int) ;

void
ar5210EnableRfKill(struct ath_hal *ah)
{
 uint16_t rfsilent = AH_PRIVATE(ah)->ah_rfsilent;
 int select = MS(rfsilent, AR_EEPROM_RFSILENT_GPIO_SEL);
 int polarity = MS(rfsilent, AR_EEPROM_RFSILENT_POLARITY);
 ar5210Gpio0SetIntr(ah, select, (ar5210GpioGet(ah, select) == polarity));
}
