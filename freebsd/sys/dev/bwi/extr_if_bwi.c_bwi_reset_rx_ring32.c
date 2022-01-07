
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bwi_softc {int sc_dev; } ;


 scalar_t__ BWI_RX32_CTRL ;
 scalar_t__ BWI_RX32_RINGINFO ;
 scalar_t__ BWI_RX32_STATUS ;
 scalar_t__ BWI_RX32_STATUS_STATE_DISABLED ;
 int BWI_RX32_STATUS_STATE_MASK ;
 scalar_t__ CSR_READ_4 (struct bwi_softc*,scalar_t__) ;
 int CSR_WRITE_4 (struct bwi_softc*,scalar_t__,int ) ;
 int DELAY (int) ;
 int NRETRY ;
 scalar_t__ __SHIFTOUT (scalar_t__,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
bwi_reset_rx_ring32(struct bwi_softc *sc, uint32_t rx_ctrl)
{
 int i;

 CSR_WRITE_4(sc, rx_ctrl + BWI_RX32_CTRL, 0);



 for (i = 0; i < 10; ++i) {
  uint32_t status;

  status = CSR_READ_4(sc, rx_ctrl + BWI_RX32_STATUS);
  if (__SHIFTOUT(status, BWI_RX32_STATUS_STATE_MASK) ==
      BWI_RX32_STATUS_STATE_DISABLED)
   break;

  DELAY(1000);
 }
 if (i == 10)
  device_printf(sc->sc_dev, "reset rx ring timedout\n");



 CSR_WRITE_4(sc, rx_ctrl + BWI_RX32_RINGINFO, 0);
}
