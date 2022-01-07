
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rt2860_softc {int (* sc_srom_read ) (struct rt2860_softc*,int ) ;} ;


 int stub1 (struct rt2860_softc*,int ) ;

__attribute__((used)) static __inline uint16_t
rt2860_srom_read(struct rt2860_softc *sc, uint8_t addr)
{

 return sc->sc_srom_read(sc, addr);
}
