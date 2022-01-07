
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wpi_softc {int dummy; } ;


 int wpi_mem_read (struct wpi_softc*,int) ;

__attribute__((used)) static __inline void
wpi_mem_read_region_4(struct wpi_softc *sc, uint32_t addr, uint32_t *data,
    int count)
{
 for (; count > 0; count--, addr += 4)
  *data++ = wpi_mem_read(sc, addr);
}
