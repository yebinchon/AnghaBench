
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpio_softc {int * sc_res; } ;
typedef int bus_size_t ;


 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static inline void
amdgpio_write_4(struct amdgpio_softc *sc, bus_size_t off,
  uint32_t val)
{
 bus_write_4(sc->sc_res[0], off, val);
}
