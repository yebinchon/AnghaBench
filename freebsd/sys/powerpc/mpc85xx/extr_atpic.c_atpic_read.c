
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct atpic_softc {int * sc_res; } ;


 int bus_read_1 (int ,int) ;

__attribute__((used)) static __inline uint8_t
atpic_read(struct atpic_softc *sc, int icu, int ofs)
{
 uint8_t val;

 val = bus_read_1(sc->sc_res[icu], ofs);
 return (val);
}
