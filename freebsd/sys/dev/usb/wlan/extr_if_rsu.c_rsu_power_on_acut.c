
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rsu_softc {int dummy; } ;


 int R92S_AFE_MISC ;
 int R92S_AFE_MISC_BGEN ;
 int R92S_AFE_MISC_MBEN ;
 int R92S_AFE_PLL_CTRL ;
 int R92S_AFE_XTAL_CTRL ;
 int R92S_CR ;
 int R92S_FWHW_SEL ;
 int R92S_LDA15_EN ;
 int R92S_LDOA15_CTRL ;
 int R92S_MAC_CLK_EN ;
 int R92S_PMC_FSM ;
 int R92S_SPS0_CTRL ;
 int R92S_SPS1_CTRL ;
 int R92S_SPS1_LDEN ;
 int R92S_SPS1_SWEN ;
 int R92S_SWHW_SEL ;
 int R92S_SYS_CLKR ;
 int R92S_SYS_CLKSEL ;
 int R92S_SYS_CLK_EN ;
 int R92S_SYS_CPU_CLKSEL ;
 int R92S_SYS_FUNC_EN ;
 int R92S_SYS_ISO_CTRL ;
 int rsu_ms_delay (struct rsu_softc*,int) ;
 int rsu_read_1 (struct rsu_softc*,int) ;
 int rsu_read_2 (struct rsu_softc*,int) ;
 int rsu_write_1 (struct rsu_softc*,int,int) ;
 int rsu_write_2 (struct rsu_softc*,int,int) ;
 int rsu_write_4 (struct rsu_softc*,int,int) ;

__attribute__((used)) static void
rsu_power_on_acut(struct rsu_softc *sc)
{
 uint32_t reg;

 rsu_write_1(sc, R92S_SPS0_CTRL + 1, 0x53);
 rsu_write_1(sc, R92S_SPS0_CTRL + 0, 0x57);


 rsu_write_1(sc, R92S_AFE_MISC,
     rsu_read_1(sc, R92S_AFE_MISC) |
     R92S_AFE_MISC_BGEN | R92S_AFE_MISC_MBEN);

 rsu_write_1(sc, R92S_LDOA15_CTRL,
     rsu_read_1(sc, R92S_LDOA15_CTRL) | R92S_LDA15_EN);

 rsu_write_1(sc, R92S_SPS1_CTRL,
     rsu_read_1(sc, R92S_SPS1_CTRL) | R92S_SPS1_LDEN);
 rsu_ms_delay(sc, 2000);

 rsu_write_1(sc, R92S_SPS1_CTRL,
     rsu_read_1(sc, R92S_SPS1_CTRL) | R92S_SPS1_SWEN);

 rsu_write_4(sc, R92S_SPS1_CTRL, 0x00a7b267);

 rsu_write_1(sc, R92S_SYS_ISO_CTRL + 1,
     rsu_read_1(sc, R92S_SYS_ISO_CTRL + 1) | 0x08);

 rsu_write_1(sc, R92S_SYS_FUNC_EN + 1,
     rsu_read_1(sc, R92S_SYS_FUNC_EN + 1) | 0x20);

 rsu_write_1(sc, R92S_SYS_ISO_CTRL + 1,
     rsu_read_1(sc, R92S_SYS_ISO_CTRL + 1) & ~0x90);


 rsu_write_1(sc, R92S_AFE_XTAL_CTRL + 1,
     rsu_read_1(sc, R92S_AFE_XTAL_CTRL + 1) & ~0x04);

 rsu_write_1(sc, R92S_AFE_PLL_CTRL,
     rsu_read_1(sc, R92S_AFE_PLL_CTRL) | 0x11);

 rsu_write_1(sc, R92S_SYS_ISO_CTRL,
     rsu_read_1(sc, R92S_SYS_ISO_CTRL) & ~0x11);


 rsu_write_2(sc, R92S_SYS_CLKR,
     rsu_read_2(sc, R92S_SYS_CLKR) & ~R92S_SYS_CLKSEL);


 rsu_write_2(sc, R92S_SYS_CLKR,
     rsu_read_2(sc, R92S_SYS_CLKR) |
     R92S_MAC_CLK_EN | R92S_SYS_CLK_EN);

 rsu_write_1(sc, R92S_PMC_FSM, 0x02);


 rsu_write_1(sc, R92S_SYS_FUNC_EN + 1,
     rsu_read_1(sc, R92S_SYS_FUNC_EN + 1) | 0x08);

 rsu_write_1(sc, R92S_SYS_FUNC_EN + 1,
     rsu_read_1(sc, R92S_SYS_FUNC_EN + 1) | 0x80);


 reg = rsu_read_2(sc, R92S_SYS_CLKR);
 reg = (reg & ~R92S_SWHW_SEL) | R92S_FWHW_SEL;
 rsu_write_2(sc, R92S_SYS_CLKR, reg);

 rsu_write_2(sc, R92S_CR, 0x37fc);


 rsu_write_1(sc, 0xfe5c,
     rsu_read_1(sc, 0xfe5c) | 0x80);
 rsu_write_1(sc, 0x00ab,
     rsu_read_1(sc, 0x00ab) | 0xc0);

 rsu_write_1(sc, R92S_SYS_CLKR,
     rsu_read_1(sc, R92S_SYS_CLKR) & ~R92S_SYS_CPU_CLKSEL);
}
