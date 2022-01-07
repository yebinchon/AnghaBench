
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int RTWN_FW_RESET_CHECKSUM ;
 int RTWN_FW_RESET_DOWNLOAD ;
 int r92c_fw_reset (struct rtwn_softc*,int) ;
 int rtwn_delay (struct rtwn_softc*,int) ;

void
r92ce_fw_reset(struct rtwn_softc *sc, int reason)
{

 if (reason == RTWN_FW_RESET_CHECKSUM)
  return;

 r92c_fw_reset(sc, reason);





 if (reason == RTWN_FW_RESET_DOWNLOAD)
  rtwn_delay(sc, 1000 * 1000);
}
