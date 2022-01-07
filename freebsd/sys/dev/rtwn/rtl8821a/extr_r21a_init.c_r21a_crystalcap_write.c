
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int crystalcap; } ;


 int R21A_MAC_PHY_CRYSTALCAP ;
 int R92C_MAC_PHY_CTRL ;
 int RW (int ,int ,int) ;
 int rtwn_bb_read (struct rtwn_softc*,int ) ;
 int rtwn_bb_write (struct rtwn_softc*,int ,int ) ;

void
r21a_crystalcap_write(struct rtwn_softc *sc)
{
 struct r12a_softc *rs = sc->sc_priv;
 uint32_t reg;
 uint8_t val;

 val = rs->crystalcap & 0x3f;
 reg = rtwn_bb_read(sc, R92C_MAC_PHY_CTRL);
 reg = RW(reg, R21A_MAC_PHY_CRYSTALCAP, val | (val << 6));
 rtwn_bb_write(sc, R92C_MAC_PHY_CTRL, reg);
}
