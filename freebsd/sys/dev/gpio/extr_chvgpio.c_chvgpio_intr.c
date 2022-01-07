
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chvgpio_softc {int sc_mem_res; } ;


 int CHVGPIO_INTERRUPT_STATUS ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
chvgpio_intr(void *arg)
{
 struct chvgpio_softc *sc = arg;
 uint32_t reg;
 int line;

 reg = bus_read_4(sc->sc_mem_res, CHVGPIO_INTERRUPT_STATUS);
 for (line = 0; line < 16; line++) {
  if ((reg & (1 << line)) == 0)
   continue;
  bus_write_4(sc->sc_mem_res, CHVGPIO_INTERRUPT_STATUS, 1 << line);
 }
}
