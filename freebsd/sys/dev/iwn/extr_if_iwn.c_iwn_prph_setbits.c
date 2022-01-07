
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwn_softc {int dummy; } ;


 int iwn_prph_read (struct iwn_softc*,int) ;
 int iwn_prph_write (struct iwn_softc*,int,int) ;

__attribute__((used)) static __inline void
iwn_prph_setbits(struct iwn_softc *sc, uint32_t addr, uint32_t mask)
{
 iwn_prph_write(sc, addr, iwn_prph_read(sc, addr) | mask);
}
