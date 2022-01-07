
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct fsl_sdhci_softc {int sdclockreg_freq_bits; scalar_t__ hwtype; int baseclk_hz; int dev; } ;


 scalar_t__ HWTYPE_ESDHC ;
 int RD4 (struct fsl_sdhci_softc*,int ) ;
 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_DIVIDERS_MASK ;
 int SDHCI_DIVIDER_HI_MASK ;
 int SDHCI_DIVIDER_HI_SHIFT ;
 int SDHCI_DIVIDER_MASK ;
 int SDHCI_DIVIDER_MASK_LEN ;
 int SDHCI_DIVIDER_SHIFT ;
 int SDHC_CLK_DIVISOR_MASK ;
 int SDHC_CLK_DIVISOR_SHIFT ;
 int SDHC_CLK_IPGEN ;
 int SDHC_CLK_PRESCALE_MASK ;
 int SDHC_CLK_PRESCALE_SHIFT ;
 int SDHC_CLK_SDCLKEN ;
 int WR4 (struct fsl_sdhci_softc*,int ,int) ;
 int device_printf (int ,char*,int,int,int,int,int) ;
 int ffs (int) ;

__attribute__((used)) static void
fsl_sdhc_set_clock(struct fsl_sdhci_softc *sc, uint16_t val)
{
 uint32_t divisor, freq, prescale, val32;

 val32 = RD4(sc, SDHCI_CLOCK_CONTROL);






 sc->sdclockreg_freq_bits = val & SDHCI_DIVIDERS_MASK;
 if (sc->hwtype == HWTYPE_ESDHC) {
  if ((val & SDHCI_CLOCK_CARD_EN) == 0) {




   return;

  }
  divisor = (val >> SDHCI_DIVIDER_SHIFT) & SDHCI_DIVIDER_MASK;
  freq = sc->baseclk_hz >> ffs(divisor);
 } else {
  if ((val & SDHCI_CLOCK_CARD_EN) == 0)
   return;
  divisor = ((val >> SDHCI_DIVIDER_SHIFT) & SDHCI_DIVIDER_MASK) |
      ((val >> SDHCI_DIVIDER_HI_SHIFT) & SDHCI_DIVIDER_HI_MASK) <<
      SDHCI_DIVIDER_MASK_LEN;
  if (divisor == 0)
   freq = sc->baseclk_hz;
  else
   freq = sc->baseclk_hz / (2 * divisor);
 }




 for (prescale = 2; freq < sc->baseclk_hz / (prescale * 16);)
  prescale <<= 1;

 for (divisor = 1; freq < sc->baseclk_hz / (prescale * divisor);)
  ++divisor;
 prescale >>= 1;
 divisor -= 1;

 val32 &= ~(SDHC_CLK_DIVISOR_MASK | SDHC_CLK_PRESCALE_MASK);
 val32 |= divisor << SDHC_CLK_DIVISOR_SHIFT;
 val32 |= prescale << SDHC_CLK_PRESCALE_SHIFT;
 val32 |= SDHC_CLK_IPGEN;
 WR4(sc, SDHCI_CLOCK_CONTROL, val32);
}
