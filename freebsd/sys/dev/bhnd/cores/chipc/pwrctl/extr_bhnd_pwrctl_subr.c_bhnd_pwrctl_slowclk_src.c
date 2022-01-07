
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pwrctl_softc {int res; int chipc_dev; } ;
typedef int bhnd_clksrc ;


 int BHND_CLKSRC_LPO ;
 int BHND_CLKSRC_PCI ;
 int BHND_CLKSRC_UNKNOWN ;
 int BHND_CLKSRC_XTAL ;
 int BHND_CLOCK_ILP ;
 int CHIPC_PLL_SLOWCLK_CTL ;

 int CHIPC_SCC_SS_MASK ;


 int PCICLK_CTL ;
 scalar_t__ PWRCTL_QUIRK (struct bhnd_pwrctl_softc*,int ) ;
 int SLOWCLK_CTL ;
 int bhnd_bus_read_4 (int ,int ) ;
 int bhnd_pwrctl_hostb_get_clksrc (int ,int ) ;

__attribute__((used)) static bhnd_clksrc
bhnd_pwrctl_slowclk_src(struct bhnd_pwrctl_softc *sc)
{
 uint32_t clkreg;
 uint32_t clksrc;


 if (PWRCTL_QUIRK(sc, PCICLK_CTL)) {
  return (bhnd_pwrctl_hostb_get_clksrc(sc->chipc_dev,
      BHND_CLOCK_ILP));
 } else if (PWRCTL_QUIRK(sc, SLOWCLK_CTL)) {
  clkreg = bhnd_bus_read_4(sc->res, CHIPC_PLL_SLOWCLK_CTL);
  clksrc = clkreg & CHIPC_SCC_SS_MASK;
 } else {

  clksrc = 128;
 }


 switch (clksrc) {
 case 129:
  return (BHND_CLKSRC_PCI);
 case 130:
  return (BHND_CLKSRC_LPO);
 case 128:
  return (BHND_CLKSRC_XTAL);
 default:
  return (BHND_CLKSRC_UNKNOWN);
 }
}
