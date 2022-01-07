
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 scalar_t__ R92C_RSV_CTRL ;
 int R92C_SYS_FUNC_EN ;
 int R92C_SYS_FUNC_EN_CPUEN ;
 int rtwn_setbits_1 (struct rtwn_softc*,scalar_t__,int,int) ;
 int rtwn_setbits_1_shift (struct rtwn_softc*,int ,int ,int ,int) ;

void
r21a_fw_reset(struct rtwn_softc *sc, int reason)
{


 rtwn_setbits_1(sc, R92C_RSV_CTRL, 0x02, 0);
 rtwn_setbits_1(sc, R92C_RSV_CTRL + 1, 0x01, 0);

 rtwn_setbits_1_shift(sc, R92C_SYS_FUNC_EN,
     R92C_SYS_FUNC_EN_CPUEN, 0, 1);


 rtwn_setbits_1(sc, R92C_RSV_CTRL, 0x02, 0);
 rtwn_setbits_1(sc, R92C_RSV_CTRL + 1, 0, 0x01);

 rtwn_setbits_1_shift(sc, R92C_SYS_FUNC_EN,
     0, R92C_SYS_FUNC_EN_CPUEN, 1);
}
