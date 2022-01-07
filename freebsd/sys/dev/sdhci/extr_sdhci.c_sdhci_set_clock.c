
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sdhci_slot {int clock; int max_clk; int quirks; int timeout_clk; scalar_t__ version; } ;


 int BCM577XX_ALT_CLOCK_BASE ;
 int BCM577XX_CTRL_CLKSEL_64MHZ ;
 int BCM577XX_CTRL_CLKSEL_DEFAULT ;
 int BCM577XX_CTRL_CLKSEL_MASK ;
 int BCM577XX_CTRL_CLKSEL_SHIFT ;
 int BCM577XX_DEFAULT_MAX_DIVIDER ;
 int BCM577XX_HOST_CONTROL ;
 int DELAY (int) ;
 int RD2 (struct sdhci_slot*,int ) ;
 int SDHCI_200_MAX_DIVIDER ;
 int SDHCI_300_MAX_DIVIDER ;
 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int SDHCI_CLOCK_INT_STABLE ;
 int SDHCI_DIVIDER_HI_MASK ;
 int SDHCI_DIVIDER_HI_SHIFT ;
 int SDHCI_DIVIDER_MASK ;
 int SDHCI_DIVIDER_MASK_LEN ;
 int SDHCI_DIVIDER_SHIFT ;
 int SDHCI_QUIRK_BCM577XX_400KHZ_CLKSRC ;
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ;
 scalar_t__ SDHCI_SPEC_300 ;
 int WR2 (struct sdhci_slot*,int ,int) ;
 scalar_t__ bootverbose ;
 scalar_t__ sdhci_debug ;
 int sdhci_dumpregs (struct sdhci_slot*) ;
 int slot_printf (struct sdhci_slot*,char*,...) ;

__attribute__((used)) static void
sdhci_set_clock(struct sdhci_slot *slot, uint32_t clock)
{
 uint32_t clk_base;
 uint32_t clk_sel;
 uint32_t res;
 uint16_t clk;
 uint16_t div;
 int timeout;

 if (clock == slot->clock)
  return;
 slot->clock = clock;


 clk = RD2(slot, SDHCI_CLOCK_CONTROL);
 WR2(slot, SDHCI_CLOCK_CONTROL, clk & ~SDHCI_CLOCK_CARD_EN);

 if (clock == 0)
  return;


 clk_base = slot->max_clk;
 if (slot->quirks & SDHCI_QUIRK_BCM577XX_400KHZ_CLKSRC) {
  clk_sel = RD2(slot, BCM577XX_HOST_CONTROL) &
      BCM577XX_CTRL_CLKSEL_MASK;




  if ((clk_base / BCM577XX_DEFAULT_MAX_DIVIDER) > clock) {
   clk_base = BCM577XX_ALT_CLOCK_BASE;
   clk_sel |= (BCM577XX_CTRL_CLKSEL_64MHZ <<
       BCM577XX_CTRL_CLKSEL_SHIFT);
  } else {
   clk_sel |= (BCM577XX_CTRL_CLKSEL_DEFAULT <<
       BCM577XX_CTRL_CLKSEL_SHIFT);
  }

  WR2(slot, BCM577XX_HOST_CONTROL, clk_sel);
 }


 if (slot->quirks & SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK)
  slot->timeout_clk = slot->clock / 1000;

 if (slot->version < SDHCI_SPEC_300) {

  res = clk_base;
  for (div = 1; div < SDHCI_200_MAX_DIVIDER; div <<= 1) {
   if (res <= clock)
    break;
   res >>= 1;
  }

  div >>= 1;
 } else {

  if (clock >= clk_base)
   div = 0;
  else {
   for (div = 2; div < SDHCI_300_MAX_DIVIDER; div += 2) {
    if ((clk_base / div) <= clock)
     break;
   }
  }
  div >>= 1;
 }

 if (bootverbose || sdhci_debug)
  slot_printf(slot, "Divider %d for freq %d (base %d)\n",
   div, clock, clk_base);


 clk = (div & SDHCI_DIVIDER_MASK) << SDHCI_DIVIDER_SHIFT;
 clk |= ((div >> SDHCI_DIVIDER_MASK_LEN) & SDHCI_DIVIDER_HI_MASK)
  << SDHCI_DIVIDER_HI_SHIFT;

 WR2(slot, SDHCI_CLOCK_CONTROL, clk);

 clk |= SDHCI_CLOCK_INT_EN;
 WR2(slot, SDHCI_CLOCK_CONTROL, clk);

 timeout = 10;
 while (!((clk = RD2(slot, SDHCI_CLOCK_CONTROL))
  & SDHCI_CLOCK_INT_STABLE)) {
  if (timeout == 0) {
   slot_printf(slot,
       "Internal clock never stabilised.\n");
   sdhci_dumpregs(slot);
   return;
  }
  timeout--;
  DELAY(1000);
 }

 clk |= SDHCI_CLOCK_CARD_EN;
 WR2(slot, SDHCI_CLOCK_CONTROL, clk);
}
