
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtbe_softc {int opened; int pio_recv; } ;


 int PIO_SETUP_IRQ (int ,int ,struct vtbe_softc*) ;
 int PIO_TEARDOWN_IRQ (int ) ;
 int vtbe_intr ;

__attribute__((used)) static int
pio_enable_irq(struct vtbe_softc *sc, int enable)
{





 if (enable) {
  if (sc->opened == 0) {
   sc->opened = 1;
   PIO_SETUP_IRQ(sc->pio_recv, vtbe_intr, sc);
  }
 } else {
  if (sc->opened == 1) {
   PIO_TEARDOWN_IRQ(sc->pio_recv);
   sc->opened = 0;
  }
 }

 return (0);
}
