
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_MCUFWDL ;
 int R92C_MCUFWDL_EN ;
 int R92C_MCUFWDL_ROM_DLEN ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;
 int rtwn_setbits_1_shift (struct rtwn_softc*,int ,int ,int ,int) ;

void
r12a_fw_download_enable(struct rtwn_softc *sc, int enable)
{
 if (enable) {

  rtwn_setbits_1(sc, R92C_MCUFWDL, 0, R92C_MCUFWDL_EN);

  rtwn_setbits_1_shift(sc, R92C_MCUFWDL, R92C_MCUFWDL_ROM_DLEN,
      0, 2);
 } else {

  rtwn_setbits_1(sc, R92C_MCUFWDL, R92C_MCUFWDL_EN, 0);
 }
}
