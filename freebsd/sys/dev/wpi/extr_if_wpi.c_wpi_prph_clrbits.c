
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wpi_softc {int dummy; } ;


 int wpi_prph_read (struct wpi_softc*,int) ;
 int wpi_prph_write (struct wpi_softc*,int,int) ;

__attribute__((used)) static __inline void
wpi_prph_clrbits(struct wpi_softc *sc, uint32_t addr, uint32_t mask)
{
 wpi_prph_write(sc, addr, wpi_prph_read(sc, addr) & ~mask);
}
