
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jme_softc {int jme_dev; } ;


 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int DELAY (int) ;
 int JME_TIMEOUT ;
 int JME_TXCSR ;
 int TXCSR_TX_ENB ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
jme_stop_tx(struct jme_softc *sc)
{
 uint32_t reg;
 int i;

 reg = CSR_READ_4(sc, JME_TXCSR);
 if ((reg & TXCSR_TX_ENB) == 0)
  return;
 reg &= ~TXCSR_TX_ENB;
 CSR_WRITE_4(sc, JME_TXCSR, reg);
 for (i = JME_TIMEOUT; i > 0; i--) {
  DELAY(1);
  if ((CSR_READ_4(sc, JME_TXCSR) & TXCSR_TX_ENB) == 0)
   break;
 }
 if (i == 0)
  device_printf(sc->jme_dev, "stopping transmitter timeout!\n");
}
