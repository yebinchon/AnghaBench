
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int sc_dev; } ;
struct iwm_host_cmd {int data; int len; int id; } ;


 int IWM_REPLY_THERMAL_MNG_BACKOFF ;
 int device_printf (int ,char*) ;
 scalar_t__ iwm_send_cmd (struct iwm_softc*,struct iwm_host_cmd*) ;

__attribute__((used)) static void
iwm_mvm_tt_tx_backoff(struct iwm_softc *sc, uint32_t backoff)
{
 struct iwm_host_cmd cmd = {
  .id = IWM_REPLY_THERMAL_MNG_BACKOFF,
  .len = { sizeof(uint32_t), },
  .data = { &backoff, },
 };

 if (iwm_send_cmd(sc, &cmd) != 0) {
  device_printf(sc->sc_dev,
      "failed to change thermal tx backoff\n");
 }
}
