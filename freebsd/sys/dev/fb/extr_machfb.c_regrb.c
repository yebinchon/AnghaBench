
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct machfb_softc {int sc_regh; int sc_regt; } ;


 int bus_space_read_1 (int ,int ,int ) ;

__attribute__((used)) static inline uint8_t
regrb(struct machfb_softc *sc, uint32_t index)
{

 return bus_space_read_1(sc->sc_regt, sc->sc_regh, index);
}
