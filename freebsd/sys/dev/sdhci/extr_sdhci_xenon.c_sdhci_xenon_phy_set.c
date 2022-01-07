
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_xenon_softc {int znr; int zpr; int mem_res; } ;
struct mmc_ios {int timing; } ;
typedef int device_t ;


 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int XENON_CMD_DDR_MODE ;
 int XENON_DQ_ASYNC_MODE ;
 int XENON_DQ_DDR_MODE_MASK ;
 int XENON_DQ_DDR_MODE_SHIFT ;
 int XENON_EMMC_FC_CMD_PD ;
 int XENON_EMMC_FC_CMD_PU ;
 int XENON_EMMC_FC_DQ_PD ;
 int XENON_EMMC_FC_DQ_PU ;
 int XENON_EMMC_FC_QSP_PD ;
 int XENON_EMMC_FC_QSP_PU ;
 int XENON_EMMC_PHY_FUNC_CONTROL ;
 int XENON_EMMC_PHY_LOGIC_TIMING_ADJUST ;
 int XENON_EMMC_PHY_PAD_CONTROL ;
 int XENON_EMMC_PHY_PAD_CONTROL1 ;
 int XENON_EMMC_PHY_PAD_CONTROL2 ;
 int XENON_EMMC_PHY_TIMING_ADJUST ;
 int XENON_ENABLE_DATA_STROBE ;
 int XENON_ENABLE_RESP_STROBE ;
 int XENON_FC_ALL_CMOS_RECEIVER ;
 int XENON_FC_CMD_RECEN ;
 int XENON_FC_DQ_RECEN ;
 int XENON_FC_QSP_RECEN ;
 int XENON_LOGIC_TIMING_VALUE ;
 int XENON_OEN_QSN ;
 int XENON_SLOT_EMMC_CTRL ;
 int XENON_TIMING_ADJUST_SDIO_MODE ;
 int XENON_ZNR_MASK ;
 int XENON_ZNR_SHIFT ;
 int XENON_ZPR_MASK ;
 int bus_read_4 (int ,int ) ;


 int bus_timing_normal ;

 int bus_write_4 (int ,int ,int) ;
 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int sdhci_xenon_phy_init (int ,struct mmc_ios*) ;

__attribute__((used)) static int
sdhci_xenon_phy_set(device_t brdev, struct mmc_ios *ios)
{
 struct sdhci_xenon_softc *sc;
 uint32_t reg;

  sc = device_get_softc(brdev);

 reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL);
 reg |= (XENON_FC_DQ_RECEN | XENON_FC_CMD_RECEN |
  XENON_FC_QSP_RECEN | XENON_OEN_QSN);

 reg |= XENON_FC_ALL_CMOS_RECEIVER;
 bus_write_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL, reg);


 reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL1);
 reg |= (XENON_EMMC_FC_CMD_PU | XENON_EMMC_FC_DQ_PU);
 reg &= ~(XENON_EMMC_FC_CMD_PD | XENON_EMMC_FC_DQ_PD);
 bus_write_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL1, reg);

 if (ios->timing == bus_timing_normal)
  return (sdhci_xenon_phy_init(brdev, ios));


 reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST);
 reg &= ~XENON_TIMING_ADJUST_SDIO_MODE;
 bus_write_4(sc->mem_res, XENON_EMMC_PHY_TIMING_ADJUST, reg);






 reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL2);
 reg &= ~((XENON_ZNR_MASK << XENON_ZNR_SHIFT) | XENON_ZPR_MASK);
 reg |= ((sc->znr << XENON_ZNR_SHIFT) | sc->zpr);
 bus_write_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL2, reg);


 reg = bus_read_4(sc->mem_res, SDHCI_CLOCK_CONTROL);
 reg &= ~SDHCI_CLOCK_CARD_EN;
 bus_write_4(sc->mem_res, SDHCI_CLOCK_CONTROL, reg);

 reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_FUNC_CONTROL);
 switch (ios->timing) {
 case 129:
  reg |= (XENON_DQ_DDR_MODE_MASK << XENON_DQ_DDR_MODE_SHIFT) |
      XENON_CMD_DDR_MODE;
  reg &= ~XENON_DQ_ASYNC_MODE;
  break;
 case 128:
 case 130:
  reg |= (XENON_DQ_DDR_MODE_MASK << XENON_DQ_DDR_MODE_SHIFT) |
      XENON_CMD_DDR_MODE | XENON_DQ_ASYNC_MODE;
  break;
 default:
  reg &= ~((XENON_DQ_DDR_MODE_MASK << XENON_DQ_DDR_MODE_SHIFT) |
      XENON_CMD_DDR_MODE);
  reg |= XENON_DQ_ASYNC_MODE;
 }
 bus_write_4(sc->mem_res, XENON_EMMC_PHY_FUNC_CONTROL, reg);


 reg = bus_read_4(sc->mem_res, SDHCI_CLOCK_CONTROL);
 reg |= SDHCI_CLOCK_CARD_EN;
 bus_write_4(sc->mem_res, SDHCI_CLOCK_CONTROL, reg);

 if (ios->timing == 129)
  bus_write_4(sc->mem_res, XENON_EMMC_PHY_LOGIC_TIMING_ADJUST,
      XENON_LOGIC_TIMING_VALUE);
 else {

  reg = bus_read_4(sc->mem_res, XENON_SLOT_EMMC_CTRL);
  reg &= ~(XENON_ENABLE_DATA_STROBE | XENON_ENABLE_RESP_STROBE);
  bus_write_4(sc->mem_res, XENON_SLOT_EMMC_CTRL, reg);


  reg = bus_read_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL1);
  reg &= ~(XENON_EMMC_FC_QSP_PD | XENON_EMMC_FC_QSP_PU);
  bus_write_4(sc->mem_res, XENON_EMMC_PHY_PAD_CONTROL1, reg);
 }

 return (sdhci_xenon_phy_init(brdev, ios));
}
