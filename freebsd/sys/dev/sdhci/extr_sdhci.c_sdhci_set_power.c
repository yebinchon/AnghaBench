
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct sdhci_slot {int power; int quirks; } ;


 int DELAY (int) ;





 int RD1 (struct sdhci_slot*,int ) ;
 int SDHCI_POWER_180 ;
 int SDHCI_POWER_300 ;
 int SDHCI_POWER_330 ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_POWER_ON ;
 int SDHCI_QUIRK_INTEL_POWER_UP_RESET ;
 int WR1 (struct sdhci_slot*,int ,int) ;
 int slot_printf (struct sdhci_slot*,char*) ;

__attribute__((used)) static void
sdhci_set_power(struct sdhci_slot *slot, u_char power)
{
 int i;
 uint8_t pwr;

 if (slot->power == power)
  return;

 slot->power = power;


 pwr = 0;
 WR1(slot, SDHCI_POWER_CONTROL, pwr);

 if (power == 0)
  return;

 switch (1 << power) {
 case 128:
  pwr |= SDHCI_POWER_180;
  break;
 case 132:
 case 131:
  pwr |= SDHCI_POWER_300;
  break;
 case 130:
 case 129:
  pwr |= SDHCI_POWER_330;
  break;
 }
 WR1(slot, SDHCI_POWER_CONTROL, pwr);





 pwr |= SDHCI_POWER_ON;
 for (i = 0; i < 20; i++) {
  WR1(slot, SDHCI_POWER_CONTROL, pwr);
  if (RD1(slot, SDHCI_POWER_CONTROL) & SDHCI_POWER_ON)
   break;
  DELAY(100);
 }
 if (!(RD1(slot, SDHCI_POWER_CONTROL) & SDHCI_POWER_ON))
  slot_printf(slot, "Bus power failed to enable\n");

 if (slot->quirks & SDHCI_QUIRK_INTEL_POWER_UP_RESET) {
  WR1(slot, SDHCI_POWER_CONTROL, pwr | 0x10);
  DELAY(10);
  WR1(slot, SDHCI_POWER_CONTROL, pwr);
  DELAY(300);
 }
}
