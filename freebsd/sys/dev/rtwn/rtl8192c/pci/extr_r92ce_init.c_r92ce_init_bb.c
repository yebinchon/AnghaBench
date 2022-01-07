
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_AFE_PLL_CTRL ;
 scalar_t__ R92C_AFE_XTAL_CTRL ;
 int R92C_LEDCFG0 ;
 scalar_t__ R92C_RF_CTRL ;
 int R92C_RF_CTRL_EN ;
 int R92C_RF_CTRL_RSTB ;
 int R92C_RF_CTRL_SDMRSTB ;
 scalar_t__ R92C_SYS_FUNC_EN ;
 int R92C_SYS_FUNC_EN_BBRSTB ;
 int R92C_SYS_FUNC_EN_BB_GLB_RST ;
 int R92C_SYS_FUNC_EN_DIO_PCIE ;
 int R92C_SYS_FUNC_EN_DIO_RF ;
 int R92C_SYS_FUNC_EN_PCIEA ;
 int R92C_SYS_FUNC_EN_PPLL ;
 int r92c_init_bb_common (struct rtwn_softc*) ;
 int rtwn_setbits_2 (struct rtwn_softc*,scalar_t__,int ,int) ;
 int rtwn_setbits_4 (struct rtwn_softc*,int ,int ,int) ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

void
r92ce_init_bb(struct rtwn_softc *sc)
{


 rtwn_setbits_2(sc, R92C_SYS_FUNC_EN, 0,
     R92C_SYS_FUNC_EN_BBRSTB | R92C_SYS_FUNC_EN_BB_GLB_RST |
     R92C_SYS_FUNC_EN_DIO_RF);

 rtwn_write_2(sc, R92C_AFE_PLL_CTRL, 0xdb83);

 rtwn_write_1(sc, R92C_RF_CTRL,
     R92C_RF_CTRL_EN | R92C_RF_CTRL_RSTB | R92C_RF_CTRL_SDMRSTB);

 rtwn_write_1(sc, R92C_SYS_FUNC_EN,
     R92C_SYS_FUNC_EN_DIO_PCIE | R92C_SYS_FUNC_EN_PCIEA |
     R92C_SYS_FUNC_EN_PPLL | R92C_SYS_FUNC_EN_BB_GLB_RST |
     R92C_SYS_FUNC_EN_BBRSTB);

 rtwn_write_1(sc, R92C_AFE_XTAL_CTRL + 1, 0x80);

 rtwn_setbits_4(sc, R92C_LEDCFG0, 0, 0x00800000);

 r92c_init_bb_common(sc);
}
