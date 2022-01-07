
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 scalar_t__ R92C_HMETFR ;
 int R92C_SYS_FUNC_EN ;
 int R92C_SYS_FUNC_EN_CPUEN ;
 int RTWN_FW_RESET_CHECKSUM ;
 int rtwn_delay (struct rtwn_softc*,int) ;
 int rtwn_read_2 (struct rtwn_softc*,int ) ;
 int rtwn_setbits_1_shift (struct rtwn_softc*,int ,int,int ,int) ;
 int rtwn_write_1 (struct rtwn_softc*,scalar_t__,int) ;

void
r92c_fw_reset(struct rtwn_softc *sc, int reason)
{
 int ntries;

 if (reason == RTWN_FW_RESET_CHECKSUM)
  return;


 rtwn_write_1(sc, R92C_HMETFR + 3, 0x20);


 for (ntries = 0; ntries < 100; ntries++) {
  if ((rtwn_read_2(sc, R92C_SYS_FUNC_EN) &
      R92C_SYS_FUNC_EN_CPUEN) == 0)
   return;
  rtwn_delay(sc, 50);
 }

 rtwn_setbits_1_shift(sc, R92C_SYS_FUNC_EN,
     R92C_SYS_FUNC_EN_CPUEN, 0, 1);
}
