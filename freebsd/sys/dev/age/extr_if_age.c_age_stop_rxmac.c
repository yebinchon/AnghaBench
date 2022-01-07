
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct age_softc {int age_dev; } ;


 int AGE_DMA_CFG ;
 int AGE_IDLE_STATUS ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_MAC_CFG ;
 int AGE_RESET_TIMEOUT ;
 int CSR_READ_4 (struct age_softc*,int ) ;
 int CSR_WRITE_4 (struct age_softc*,int ,int) ;
 int DELAY (int) ;
 int DMA_CFG_WR_ENB ;
 int IDLE_STATUS_DMAWR ;
 int IDLE_STATUS_RXMAC ;
 int MAC_CFG_RX_ENB ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
age_stop_rxmac(struct age_softc *sc)
{
 uint32_t reg;
 int i;

 AGE_LOCK_ASSERT(sc);

 reg = CSR_READ_4(sc, AGE_MAC_CFG);
 if ((reg & MAC_CFG_RX_ENB) != 0) {
  reg &= ~MAC_CFG_RX_ENB;
  CSR_WRITE_4(sc, AGE_MAC_CFG, reg);
 }

 reg = CSR_READ_4(sc, AGE_DMA_CFG);
 if ((reg & DMA_CFG_WR_ENB) != 0) {
  reg &= ~DMA_CFG_WR_ENB;
  CSR_WRITE_4(sc, AGE_DMA_CFG, reg);
 }
 for (i = AGE_RESET_TIMEOUT; i > 0; i--) {
  if ((CSR_READ_4(sc, AGE_IDLE_STATUS) &
      (IDLE_STATUS_RXMAC | IDLE_STATUS_DMAWR)) == 0)
   break;
  DELAY(10);
 }
 if (i == 0)
  device_printf(sc->age_dev, "stopping RxMAC timeout!\n");
}
