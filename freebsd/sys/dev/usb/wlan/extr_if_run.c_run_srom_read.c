
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct run_softc {int (* sc_srom_read ) (struct run_softc*,int ,int *) ;} ;


 int stub1 (struct run_softc*,int ,int *) ;

__attribute__((used)) static __inline int
run_srom_read(struct run_softc *sc, uint16_t addr, uint16_t *val)
{

 return sc->sc_srom_read(sc, addr, val);
}
