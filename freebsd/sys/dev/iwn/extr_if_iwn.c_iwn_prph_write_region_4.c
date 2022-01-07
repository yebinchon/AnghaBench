
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwn_softc {int dummy; } ;


 int iwn_prph_write (struct iwn_softc*,int,int const) ;

__attribute__((used)) static __inline void
iwn_prph_write_region_4(struct iwn_softc *sc, uint32_t addr,
    const uint32_t *data, int count)
{
 for (; count > 0; count--, data++, addr += 4)
  iwn_prph_write(sc, addr, *data);
}
