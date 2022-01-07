
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fsl_sdhci_softc {scalar_t__ hwtype; int sdclockreg_freq_bits; } ;


 scalar_t__ HWTYPE_ESDHC ;
 int RD4 (struct fsl_sdhci_softc*,int ) ;
 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_INT_EN ;
 int SDHCI_CLOCK_INT_STABLE ;
 int SDHC_CLK_SDCLKEN ;
 int SDHC_PRES_SDSTB ;
 int SDHC_PRES_STATE ;
 int SDHC_SYS_CTRL ;

__attribute__((used)) static uint16_t
fsl_sdhc_get_clock(struct fsl_sdhci_softc *sc)
{
 uint16_t val;
 val = sc->sdclockreg_freq_bits;






 val |= SDHCI_CLOCK_INT_EN;
 if (RD4(sc, SDHC_PRES_STATE) & SDHC_PRES_SDSTB)
     val |= SDHCI_CLOCK_INT_STABLE;
 if (sc->hwtype == HWTYPE_ESDHC) {



   val |= SDHCI_CLOCK_CARD_EN;
 } else {
  val |= SDHCI_CLOCK_CARD_EN;
 }

 return (val);
}
