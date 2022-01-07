
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct hrowpic_softc {int sc_bh; int sc_bt; } ;


 scalar_t__ HPIC_1ST_OFFSET ;
 scalar_t__ HPIC_PRIMARY ;
 int bus_space_read_4 (int ,int ,scalar_t__) ;
 int bus_space_write_4 (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
hrowpic_write_reg(struct hrowpic_softc *sc, u_int reg, u_int bank,
    uint32_t val)
{

 if (bank == HPIC_PRIMARY)
  reg += HPIC_1ST_OFFSET;

 bus_space_write_4(sc->sc_bt, sc->sc_bh, reg, val);


 bus_space_read_4(sc->sc_bt, sc->sc_bh, reg);
}
