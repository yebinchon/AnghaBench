
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct iwm_softc {int dummy; } ;


 int iwm_write_prph (struct iwm_softc*,scalar_t__,int) ;

void
iwm_write_prph64(struct iwm_softc *sc, uint64_t addr, uint64_t val)
{
 iwm_write_prph(sc, (uint32_t)addr, val & 0xffffffff);
 iwm_write_prph(sc, (uint32_t)addr + 4, val >> 32);
}
