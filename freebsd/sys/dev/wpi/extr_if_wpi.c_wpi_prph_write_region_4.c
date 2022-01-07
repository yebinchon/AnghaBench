
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct wpi_softc {int dummy; } ;


 int wpi_prph_write (struct wpi_softc*,scalar_t__,scalar_t__ const) ;

__attribute__((used)) static __inline void
wpi_prph_write_region_4(struct wpi_softc *sc, uint32_t addr,
    const uint32_t *data, uint32_t count)
{
 for (; count != 0; count--, data++, addr += 4)
  wpi_prph_write(sc, addr, *data);
}
