
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvram2env_softc {int bsh; int bst; scalar_t__ need_swap; } ;


 int bswap32 (int ) ;
 int bus_space_read_4 (int ,int ,int) ;

__attribute__((used)) static uint32_t read_4(struct nvram2env_softc * sc, int offset)
{
 if (sc->need_swap)
  return (bswap32(bus_space_read_4(sc->bst, sc->bsh, offset)));
 else
  return (bus_space_read_4(sc->bst, sc->bsh, offset));
}
