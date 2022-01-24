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
struct iwi_txpower {int silence_threshold; int multicast_enabled; int answer_pbreq; int disable_unicast_decryption; int disable_multicast_decryption; int allow_invalid_frames; int allow_beacon_and_probe_resp; int allow_mgt; int nchan; int /*<<< orphan*/  mode; TYPE_1__* chan; int /*<<< orphan*/  antenna; int /*<<< orphan*/  bluetooth_coexistence; } ;
typedef  struct iwi_txpower uint8_t ;
typedef  struct iwi_txpower uint32_t ;
struct ieee80211com {scalar_t__ ic_opmode; int /*<<< orphan*/ * ic_sup_rates; struct iwi_txpower* ic_macaddr; int /*<<< orphan*/  ic_vaps; } ;
struct iwi_softc {int /*<<< orphan*/  antenna; int /*<<< orphan*/  bluetooth; struct ieee80211com sc_ic; } ;
struct iwi_configuration {int silence_threshold; int multicast_enabled; int answer_pbreq; int disable_unicast_decryption; int disable_multicast_decryption; int allow_invalid_frames; int allow_beacon_and_probe_resp; int allow_mgt; int nchan; int /*<<< orphan*/  mode; TYPE_1__* chan; int /*<<< orphan*/  antenna; int /*<<< orphan*/  bluetooth_coexistence; } ;
struct ieee80211vap {struct iwi_txpower* iv_myaddr; } ;
struct TYPE_2__ {int chan; int /*<<< orphan*/  power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IEEE80211_ADDR_LEN ; 
 size_t IEEE80211_MODE_11A ; 
 size_t IEEE80211_MODE_11G ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int /*<<< orphan*/  IWI_CMD_ENABLE ; 
 int /*<<< orphan*/  IWI_CMD_SET_CONFIG ; 
 int /*<<< orphan*/  IWI_CMD_SET_IV ; 
 int /*<<< orphan*/  IWI_CMD_SET_MAC_ADDRESS ; 
 int /*<<< orphan*/  IWI_CMD_SET_TX_POWER ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_MODE_11A ; 
 int /*<<< orphan*/  IWI_MODE_11B ; 
 int /*<<< orphan*/  IWI_MODE_11G ; 
 int /*<<< orphan*/  IWI_RATESET_TYPE_SUPPORTED ; 
 int /*<<< orphan*/  IWI_TXPOWER_MAX ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct iwi_txpower FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwi_softc*,int /*<<< orphan*/ ,struct iwi_txpower*,int) ; 
 int FUNC6 (struct iwi_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwi_txpower) ; 
 int /*<<< orphan*/  FUNC8 (struct iwi_txpower*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct iwi_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);
	struct iwi_configuration config;
	struct iwi_txpower power;
	uint8_t *macaddr;
	uint32_t data;
	int error, i;

	FUNC1(sc);

	macaddr = vap ? vap->iv_myaddr : ic->ic_macaddr;
	FUNC0(("Setting MAC address to %6D\n", macaddr, ":"));
	error = FUNC5(sc, IWI_CMD_SET_MAC_ADDRESS, macaddr,
	    IEEE80211_ADDR_LEN);
	if (error != 0)
		return error;

	FUNC8(&config, 0, sizeof config);
	config.bluetooth_coexistence = sc->bluetooth;
	config.silence_threshold = 0x1e;
	config.antenna = sc->antenna;
	config.multicast_enabled = 1;
	config.answer_pbreq = (ic->ic_opmode == IEEE80211_M_IBSS) ? 1 : 0;
	config.disable_unicast_decryption = 1;
	config.disable_multicast_decryption = 1;
	if (ic->ic_opmode == IEEE80211_M_MONITOR) {
		config.allow_invalid_frames = 1;
		config.allow_beacon_and_probe_resp = 1;
		config.allow_mgt = 1;
	}
	FUNC0(("Configuring adapter\n"));
	error = FUNC5(sc, IWI_CMD_SET_CONFIG, &config, sizeof config);
	if (error != 0)
		return error;
	if (ic->ic_opmode == IEEE80211_M_IBSS) {
		power.mode = IWI_MODE_11B;
		power.nchan = 11;
		for (i = 0; i < 11; i++) {
			power.chan[i].chan = i + 1;
			power.chan[i].power = IWI_TXPOWER_MAX;
		}
		FUNC0(("Setting .11b channels tx power\n"));
		error = FUNC5(sc, IWI_CMD_SET_TX_POWER, &power, sizeof power);
		if (error != 0)
			return error;

		power.mode = IWI_MODE_11G;
		FUNC0(("Setting .11g channels tx power\n"));
		error = FUNC5(sc, IWI_CMD_SET_TX_POWER, &power, sizeof power);
		if (error != 0)
			return error;
	}

	error = FUNC6(sc, &ic->ic_sup_rates[IEEE80211_MODE_11G],
	    IWI_MODE_11G, IWI_RATESET_TYPE_SUPPORTED);
	if (error != 0)
		return error;

	error = FUNC6(sc, &ic->ic_sup_rates[IEEE80211_MODE_11A],
	    IWI_MODE_11A, IWI_RATESET_TYPE_SUPPORTED);
	if (error != 0)
		return error;

	data = FUNC4(FUNC3());
	FUNC0(("Setting initialization vector to %u\n", FUNC7(data)));
	error = FUNC5(sc, IWI_CMD_SET_IV, &data, sizeof data);
	if (error != 0)
		return error;

	/* enable adapter */
	FUNC0(("Enabling adapter\n"));
	return FUNC5(sc, IWI_CMD_ENABLE, NULL, 0);
}