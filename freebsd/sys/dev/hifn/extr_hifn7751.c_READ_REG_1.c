
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hifn_softc {scalar_t__ sc_bar1_lastreg; int sc_sh1; int sc_st1; } ;
typedef scalar_t__ bus_size_t ;


 int bus_space_read_4 (int ,int ,scalar_t__) ;

__attribute__((used)) static __inline u_int32_t
READ_REG_1(struct hifn_softc *sc, bus_size_t reg)
{
    u_int32_t v = bus_space_read_4(sc->sc_st1, sc->sc_sh1, reg);
    sc->sc_bar1_lastreg = (bus_size_t) -1;
    return (v);
}
