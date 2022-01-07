
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {int jme_dev; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int DELAY (int) ;
 int JME_RXCSR ;
 int JME_TIMEOUT ;
 int RXCSR_RX_ENB ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
jme_stop_rx(struct jme_softc *sc)
{
 uint32_t reg;
 int i;

 reg = CSR_READ_4(sc, JME_RXCSR);
 if ((reg & RXCSR_RX_ENB) == 0)
  return;
 reg &= ~RXCSR_RX_ENB;
 CSR_WRITE_4(sc, JME_RXCSR, reg);
 for (i = JME_TIMEOUT; i > 0; i--) {
  DELAY(1);
  if ((CSR_READ_4(sc, JME_RXCSR) & RXCSR_RX_ENB) == 0)
   break;
 }
 if (i == 0)
  device_printf(sc->jme_dev, "stopping recevier timeout!\n");
}
