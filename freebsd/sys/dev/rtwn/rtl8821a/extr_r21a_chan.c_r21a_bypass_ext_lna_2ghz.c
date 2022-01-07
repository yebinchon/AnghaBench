
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R12A_RFE_INV (int ) ;
 int R12A_RFE_PINMUX (int ) ;
 int rtwn_bb_setbits (struct rtwn_softc*,int ,int,int) ;

__attribute__((used)) static void
r21a_bypass_ext_lna_2ghz(struct rtwn_softc *sc)
{
 rtwn_bb_setbits(sc, R12A_RFE_INV(0), 0x00100000, 0);
 rtwn_bb_setbits(sc, R12A_RFE_INV(0), 0x00400000, 0);
 rtwn_bb_setbits(sc, R12A_RFE_PINMUX(0), 0, 0x07);
 rtwn_bb_setbits(sc, R12A_RFE_PINMUX(0), 0, 0x0700);
}
