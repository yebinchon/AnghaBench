
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ale_softc {int* ale_eaddr; int ale_dev; } ;


 int ALE_PAR0 ;
 int ALE_PAR1 ;
 int ALE_SPI_CTRL ;
 int ALE_TWSI_CTRL ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int) ;
 int DELAY (int) ;
 int PCIY_VPD ;
 int SPI_VPD_ENB ;
 int TWSI_CTRL_SW_LD_START ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;

__attribute__((used)) static void
ale_get_macaddr(struct ale_softc *sc)
{
 uint32_t ea[2], reg;
 int i, vpdc;

 reg = CSR_READ_4(sc, ALE_SPI_CTRL);
 if ((reg & SPI_VPD_ENB) != 0) {
  reg &= ~SPI_VPD_ENB;
  CSR_WRITE_4(sc, ALE_SPI_CTRL, reg);
 }

 if (pci_find_cap(sc->ale_dev, PCIY_VPD, &vpdc) == 0) {




  CSR_WRITE_4(sc, ALE_TWSI_CTRL, CSR_READ_4(sc, ALE_TWSI_CTRL) |
      TWSI_CTRL_SW_LD_START);
  for (i = 100; i > 0; i--) {
   DELAY(1000);
   reg = CSR_READ_4(sc, ALE_TWSI_CTRL);
   if ((reg & TWSI_CTRL_SW_LD_START) == 0)
    break;
  }
  if (i == 0)
   device_printf(sc->ale_dev,
       "reloading EEPROM timeout!\n");
 } else {
  if (bootverbose)
   device_printf(sc->ale_dev,
       "PCI VPD capability not found!\n");
 }

 ea[0] = CSR_READ_4(sc, ALE_PAR0);
 ea[1] = CSR_READ_4(sc, ALE_PAR1);
 sc->ale_eaddr[0] = (ea[1] >> 8) & 0xFF;
 sc->ale_eaddr[1] = (ea[1] >> 0) & 0xFF;
 sc->ale_eaddr[2] = (ea[0] >> 24) & 0xFF;
 sc->ale_eaddr[3] = (ea[0] >> 16) & 0xFF;
 sc->ale_eaddr[4] = (ea[0] >> 8) & 0xFF;
 sc->ale_eaddr[5] = (ea[0] >> 0) & 0xFF;
}
