
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct gem_softc {int dummy; } ;
typedef int bus_addr_t ;


 int DELAY (int) ;
 int GEM_BANKN_READ_M (int ,int,struct gem_softc*,int ) ;
 int GEM_TRIES ;

__attribute__((used)) static int
gem_bitwait(struct gem_softc *sc, u_int bank, bus_addr_t r, uint32_t clr,
    uint32_t set)
{
 int i;
 uint32_t reg;

 for (i = GEM_TRIES; i--; DELAY(100)) {
  reg = GEM_BANKN_READ_M(bank, 4, sc, r);
  if ((reg & clr) == 0 && (reg & set) == set)
   return (1);
 }
 return (0);
}
