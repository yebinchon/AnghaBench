
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int dummy; } ;


 scalar_t__ R92S_AFE_MISC ;
 scalar_t__ R92S_AFE_PLL_CTRL ;
 scalar_t__ R92S_LDOA15_CTRL ;
 scalar_t__ R92S_LDOV12D_CTRL ;
 scalar_t__ R92S_PMC_FSM ;
 scalar_t__ R92S_RF_CTRL ;
 scalar_t__ R92S_SPS0_CTRL ;
 scalar_t__ R92S_SYS_CLKR ;
 scalar_t__ R92S_SYS_FUNC_EN ;
 scalar_t__ R92S_SYS_ISO_CTRL ;
 int RSU_PWR_OFF ;
 int rsu_ms_delay (struct rsu_softc*,int) ;
 int rsu_set_fw_power_state (struct rsu_softc*,int ) ;
 int rsu_write_1 (struct rsu_softc*,scalar_t__,int) ;

__attribute__((used)) static void
rsu_power_off(struct rsu_softc *sc)
{

 rsu_write_1(sc, R92S_RF_CTRL, 0x00);
 rsu_ms_delay(sc, 5);



 rsu_write_1(sc, R92S_SYS_CLKR + 1, 0x38);

 rsu_write_1(sc, R92S_SYS_FUNC_EN + 1, 0x70);
 rsu_write_1(sc, R92S_PMC_FSM, 0x06);
 rsu_write_1(sc, R92S_SYS_ISO_CTRL + 0, 0xf9);
 rsu_write_1(sc, R92S_SYS_ISO_CTRL + 1, 0xe8);


 rsu_write_1(sc, R92S_AFE_PLL_CTRL, 0x00);

 rsu_write_1(sc, R92S_LDOA15_CTRL, 0x54);

 rsu_write_1(sc, R92S_SYS_FUNC_EN + 1, 0x50);
 rsu_write_1(sc, R92S_LDOV12D_CTRL, 0x24);

 rsu_write_1(sc, R92S_AFE_MISC, 0x30);

 rsu_write_1(sc, R92S_SPS0_CTRL + 0, 0x56);
 rsu_write_1(sc, R92S_SPS0_CTRL + 1, 0x43);


 (void) rsu_set_fw_power_state(sc, RSU_PWR_OFF);
}
