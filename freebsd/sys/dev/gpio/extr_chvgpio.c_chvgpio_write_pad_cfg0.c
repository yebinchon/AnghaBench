
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chvgpio_softc {int sc_mem_res; } ;


 int bus_write_4 (int ,int ,int ) ;
 int chvgpio_pad_cfg0_offset (int) ;

__attribute__((used)) static inline void
chvgpio_write_pad_cfg0(struct chvgpio_softc *sc, int pin, uint32_t val)
{
 bus_write_4(sc->sc_mem_res, chvgpio_pad_cfg0_offset(pin), val);
}
