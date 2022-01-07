
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cas_softc {int dummy; } ;
typedef int bus_addr_t ;


 int CAS_READ_4 (struct cas_softc*,int ) ;
 int CAS_TRIES ;
 int DELAY (int) ;

__attribute__((used)) static int
cas_bitwait(struct cas_softc *sc, bus_addr_t r, uint32_t clr, uint32_t set)
{
 int i;
 uint32_t reg;

 for (i = CAS_TRIES; i--; DELAY(100)) {
  reg = CAS_READ_4(sc, r);
  if ((reg & clr) == 0 && (reg & set) == set)
   return (1);
 }
 return (0);
}
