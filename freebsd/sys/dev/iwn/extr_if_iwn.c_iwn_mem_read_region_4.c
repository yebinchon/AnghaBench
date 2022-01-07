
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwn_softc {int dummy; } ;


 int iwn_mem_read (struct iwn_softc*,int) ;

__attribute__((used)) static __inline void
iwn_mem_read_region_4(struct iwn_softc *sc, uint32_t addr, uint32_t *data,
    int count)
{
 for (; count > 0; count--, addr += 4)
  *data++ = iwn_mem_read(sc, addr);
}
