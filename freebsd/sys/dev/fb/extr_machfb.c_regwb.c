
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct machfb_softc {int sc_regh; int sc_regt; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int bus_space_barrier (int ,int ,int ,int,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;

__attribute__((used)) static inline void
regwb(struct machfb_softc *sc, uint32_t index, uint8_t data)
{

 bus_space_write_1(sc->sc_regt, sc->sc_regh, index, data);
 bus_space_barrier(sc->sc_regt, sc->sc_regh, index, 1,
     BUS_SPACE_BARRIER_WRITE);
}
