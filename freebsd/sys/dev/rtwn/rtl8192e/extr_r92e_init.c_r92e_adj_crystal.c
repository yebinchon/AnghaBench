
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_AFE_PLL_CTRL ;
 int R92C_AFE_PLL_CTRL_FREF_SEL ;
 int R92E_APE_PLL_CTRL_EXT ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int,int ) ;
 int rtwn_setbits_4 (struct rtwn_softc*,int ,int,int ) ;

__attribute__((used)) static void
r92e_adj_crystal(struct rtwn_softc *sc)
{

 rtwn_setbits_1(sc, R92C_AFE_PLL_CTRL, R92C_AFE_PLL_CTRL_FREF_SEL, 0);
 rtwn_setbits_4(sc, R92E_APE_PLL_CTRL_EXT, 0x00000380, 0);
 rtwn_setbits_1(sc, R92C_AFE_PLL_CTRL, 0x40, 0);
 rtwn_setbits_4(sc, R92E_APE_PLL_CTRL_EXT, 0x00200000, 0);
}
