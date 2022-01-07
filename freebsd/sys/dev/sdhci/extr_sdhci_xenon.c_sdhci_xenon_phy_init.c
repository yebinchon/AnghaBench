
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_xenon_softc {int mem_res; scalar_t__ slow_mode; } ;
struct mmc_ios {int timing; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int XENON_EMMC_PHY_TIMING_ADJUST ;
 int XENON_PHY_INITIALIZATION ;
 int XENON_SAMPL_INV_QSP_PHASE_SELECT ;
 int XENON_TIMING_ADJUST_SLOW_MODE ;
 int bus_read_4 (int ,int ) ;





 int bus_write_4 (int ,int ,int) ;
 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
sdhci_xenon_phy_init(device_t brdev, struct mmc_ios *ios)
{
 int i;
 struct sdhci_xenon_softc *sc;
 uint32_t reg;

  sc = device_get_softc(brdev);
 reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST);
 reg |= XENON_SAMPL_INV_QSP_PHASE_SELECT;
 switch (ios->timing) {
 case 131:
 case 132:
 case 130:
 case 129:
 case 128:
  reg |= XENON_TIMING_ADJUST_SLOW_MODE;
  break;
 default:
  reg &= ~XENON_TIMING_ADJUST_SLOW_MODE;
 }
 if (sc->slow_mode)
  reg |= XENON_TIMING_ADJUST_SLOW_MODE;
 bus_write_4(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST, reg);

 reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST);
 reg |= XENON_PHY_INITIALIZATION;
 bus_write_4(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST, reg);


 for (i = 100; i > 0; i--) {
  DELAY(100);

  reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST);
  if ((reg & XENON_PHY_INITIALIZATION) == 0)
   break;
 }

 if (i == 0) {
  device_printf(brdev, "eMMC PHY failed to initialize\n");
  return (ETIMEDOUT);
 }

 return (0);
}
