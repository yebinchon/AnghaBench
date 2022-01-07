
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hifn_softc {int sc_flags; int sc_bar0_lastreg; int sc_sh0; int sc_st0; } ;
typedef int bus_size_t ;


 int HIFN_0_PUCNFG ;
 int HIFN_IS_7811 ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int,int ) ;

__attribute__((used)) static void
hifn_write_reg_0(struct hifn_softc *sc, bus_size_t reg, u_int32_t val)
{
 if (sc->sc_flags & HIFN_IS_7811) {
  if (sc->sc_bar0_lastreg == reg - 4)
   bus_space_read_4(sc->sc_st0, sc->sc_sh0, HIFN_0_PUCNFG);
  sc->sc_bar0_lastreg = reg;
 }
 bus_space_write_4(sc->sc_st0, sc->sc_sh0, reg, val);
}
