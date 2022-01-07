
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hifn_softc {int sc_flags; int sc_ramsize; } ;


 int HIFN_0_PUCNFG ;
 int HIFN_IS_7956 ;
 int HIFN_PUCNFG_DRAMMASK ;
 int READ_REG_0 (struct hifn_softc*,int ) ;

__attribute__((used)) static int
hifn_dramsize(struct hifn_softc *sc)
{
 u_int32_t cnfg;

 if (sc->sc_flags & HIFN_IS_7956) {



  sc->sc_ramsize = 32768;
 } else {
  cnfg = READ_REG_0(sc, HIFN_0_PUCNFG) &
      HIFN_PUCNFG_DRAMMASK;
  sc->sc_ramsize = 1 << ((cnfg >> 13) + 18);
 }
 return (0);
}
