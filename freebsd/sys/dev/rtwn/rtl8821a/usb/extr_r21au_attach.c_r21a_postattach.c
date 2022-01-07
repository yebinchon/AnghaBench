
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_scan_end; int ic_scan_start; int ic_ioctl; } ;
struct rtwn_softc {int sc_set_led; struct r12a_softc* sc_priv; struct ieee80211com sc_ic; } ;
struct r12a_softc {scalar_t__ board_type; int rs_scan_end; int rs_scan_start; int rs_chan_check; } ;


 scalar_t__ R92C_BOARD_TYPE_COMBO ;
 scalar_t__ R92C_BOARD_TYPE_MINICARD ;
 scalar_t__ R92C_BOARD_TYPE_SOLO ;
 int TIMEOUT_TASK_INIT (int ,int *,int ,int ,struct rtwn_softc*) ;
 int r12a_ioctl_net ;
 int r21a_set_led ;
 int r21au_chan_check ;
 int r21au_scan_end ;
 int r21au_scan_start ;
 int r88e_set_led ;
 int taskqueue_thread ;

__attribute__((used)) static void
r21a_postattach(struct rtwn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct r12a_softc *rs = sc->sc_priv;

 if (rs->board_type == R92C_BOARD_TYPE_MINICARD ||
     rs->board_type == R92C_BOARD_TYPE_SOLO ||
     rs->board_type == R92C_BOARD_TYPE_COMBO)
  sc->sc_set_led = r88e_set_led;
 else
  sc->sc_set_led = r21a_set_led;

 TIMEOUT_TASK_INIT(taskqueue_thread, &rs->rs_chan_check, 0,
     r21au_chan_check, sc);


 ic->ic_ioctl = r12a_ioctl_net;

 rs->rs_scan_start = ic->ic_scan_start;
 ic->ic_scan_start = r21au_scan_start;
 rs->rs_scan_end = ic->ic_scan_end;
 ic->ic_scan_end = r21au_scan_end;
}
