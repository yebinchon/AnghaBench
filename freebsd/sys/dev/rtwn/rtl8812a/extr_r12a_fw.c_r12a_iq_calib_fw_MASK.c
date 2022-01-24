#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct ieee80211_channel* ic_curchan; } ;
struct rtwn_softc {TYPE_1__ sc_ic; struct r12a_softc* sc_priv; } ;
struct r12a_softc {int rs_flags; int /*<<< orphan*/  ext_lna_5g; int /*<<< orphan*/  ext_pa_5g; } ;
struct r12a_fw_cmd_iq_calib {int /*<<< orphan*/  ext_5g_pa_lna; int /*<<< orphan*/  band_bw; int /*<<< orphan*/  chan; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  R12A_CMD_IQ_CALIBRATE ; 
 int R12A_IQK_RUNNING ; 
 int /*<<< orphan*/  RTWN_CMD_IQ_BAND_2GHZ ; 
 int /*<<< orphan*/  RTWN_CMD_IQ_BAND_5GHZ ; 
 int /*<<< orphan*/  RTWN_CMD_IQ_CHAN_WIDTH_20 ; 
 int /*<<< orphan*/  RTWN_CMD_IQ_CHAN_WIDTH_40 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTWN_DEBUG_CALIB ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,struct r12a_fw_cmd_iq_calib*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_channel*) ; 

void
FUNC7(struct rtwn_softc *sc)
{
	struct r12a_softc *rs = sc->sc_priv;
	struct ieee80211_channel *c = sc->sc_ic.ic_curchan;
	struct r12a_fw_cmd_iq_calib cmd;

	if (rs->rs_flags & R12A_IQK_RUNNING)
		return;

	FUNC4(sc, RTWN_DEBUG_CALIB, "Starting IQ calibration (FW)\n");

	cmd.chan = FUNC6(c);
	if (FUNC0(c))
		cmd.band_bw = RTWN_CMD_IQ_BAND_5GHZ;
	else
		cmd.band_bw = RTWN_CMD_IQ_BAND_2GHZ;

	/* TODO: 80/160 MHz. */
	if (FUNC1(c))
		cmd.band_bw |= RTWN_CMD_IQ_CHAN_WIDTH_40;
	else
		cmd.band_bw |= RTWN_CMD_IQ_CHAN_WIDTH_20;

	cmd.ext_5g_pa_lna = FUNC3(rs->ext_pa_5g);
	cmd.ext_5g_pa_lna |= FUNC2(rs->ext_lna_5g);

	if (FUNC5(sc, R12A_CMD_IQ_CALIBRATE, &cmd, sizeof(cmd)) != 0) {
		FUNC4(sc, RTWN_DEBUG_CALIB,
		    "error while sending IQ calibration command to FW!\n");
		return;
	}

	rs->rs_flags |= R12A_IQK_RUNNING;
}