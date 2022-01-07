
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct atpic_softc {int * sc_res; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int bus_barrier (int ,int,int,int) ;
 int bus_write_1 (int ,int,int ) ;

__attribute__((used)) static __inline void
atpic_write(struct atpic_softc *sc, int icu, int ofs, uint8_t val)
{

 bus_write_1(sc->sc_res[icu], ofs, val);
 bus_barrier(sc->sc_res[icu], ofs, 2 - ofs,
     BUS_SPACE_BARRIER_READ|BUS_SPACE_BARRIER_WRITE);
}
