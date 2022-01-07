
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ieee80211_channel* ic_curchan; } ;
struct rtwn_softc {TYPE_1__ sc_ic; struct r12a_softc* sc_priv; } ;
struct r12a_softc {int rs_flags; int ext_lna_5g; int ext_pa_5g; } ;
struct r12a_fw_cmd_iq_calib {int ext_5g_pa_lna; int band_bw; int chan; } ;
struct ieee80211_channel {int dummy; } ;
typedef int cmd ;


 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel*) ;
 int R12A_CMD_IQ_CALIBRATE ;
 int R12A_IQK_RUNNING ;
 int RTWN_CMD_IQ_BAND_2GHZ ;
 int RTWN_CMD_IQ_BAND_5GHZ ;
 int RTWN_CMD_IQ_CHAN_WIDTH_20 ;
 int RTWN_CMD_IQ_CHAN_WIDTH_40 ;
 int RTWN_CMD_IQ_EXT_LNA_5G (int ) ;
 int RTWN_CMD_IQ_EXT_PA_5G (int ) ;
 int RTWN_DEBUG_CALIB ;
 int RTWN_DPRINTF (struct rtwn_softc*,int ,char*) ;
 scalar_t__ r88e_fw_cmd (struct rtwn_softc*,int ,struct r12a_fw_cmd_iq_calib*,int) ;
 int rtwn_chan2centieee (struct ieee80211_channel*) ;

void
r12a_iq_calib_fw(struct rtwn_softc *sc)
{
 struct r12a_softc *rs = sc->sc_priv;
 struct ieee80211_channel *c = sc->sc_ic.ic_curchan;
 struct r12a_fw_cmd_iq_calib cmd;

 if (rs->rs_flags & R12A_IQK_RUNNING)
  return;

 RTWN_DPRINTF(sc, RTWN_DEBUG_CALIB, "Starting IQ calibration (FW)\n");

 cmd.chan = rtwn_chan2centieee(c);
 if (IEEE80211_IS_CHAN_5GHZ(c))
  cmd.band_bw = RTWN_CMD_IQ_BAND_5GHZ;
 else
  cmd.band_bw = RTWN_CMD_IQ_BAND_2GHZ;


 if (IEEE80211_IS_CHAN_HT40(c))
  cmd.band_bw |= RTWN_CMD_IQ_CHAN_WIDTH_40;
 else
  cmd.band_bw |= RTWN_CMD_IQ_CHAN_WIDTH_20;

 cmd.ext_5g_pa_lna = RTWN_CMD_IQ_EXT_PA_5G(rs->ext_pa_5g);
 cmd.ext_5g_pa_lna |= RTWN_CMD_IQ_EXT_LNA_5G(rs->ext_lna_5g);

 if (r88e_fw_cmd(sc, R12A_CMD_IQ_CALIBRATE, &cmd, sizeof(cmd)) != 0) {
  RTWN_DPRINTF(sc, RTWN_DEBUG_CALIB,
      "error while sending IQ calibration command to FW!\n");
  return;
 }

 rs->rs_flags |= R12A_IQK_RUNNING;
}
