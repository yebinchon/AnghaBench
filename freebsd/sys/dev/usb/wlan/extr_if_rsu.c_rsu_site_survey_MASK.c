#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rsu_softc {int sc_extra_scan; int /*<<< orphan*/  sc_dev; scalar_t__ sc_active_scan; } ;
struct r92s_fw_cmd_sitesurvey {void* ssidlen; int /*<<< orphan*/  ssid; void* active; void* limit; } ;
struct ieee80211_scan_ssid {int len; int /*<<< orphan*/  ssid; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  R92S_CMD_SITE_SURVEY ; 
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*) ; 
 int RSU_DEBUG_FWCMD ; 
 int RSU_DEBUG_SCAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r92s_fw_cmd_sitesurvey*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int rsu_debug ; 
 int FUNC8 (struct rsu_softc*,int /*<<< orphan*/ ,struct r92s_fw_cmd_sitesurvey*,int) ; 

__attribute__((used)) static int
FUNC9(struct rsu_softc *sc, struct ieee80211_scan_ssid *ssid)
{
	struct r92s_fw_cmd_sitesurvey cmd;

	FUNC0(sc);

	FUNC6(&cmd, 0, sizeof(cmd));
	/* TODO: passive channels? */
	if (sc->sc_active_scan)
		cmd.active = FUNC2(1);
	cmd.limit = FUNC2(48);
	
	if (ssid != NULL) {
		sc->sc_extra_scan = 1;
		cmd.ssidlen = FUNC2(ssid->len);
		FUNC5(cmd.ssid, ssid->ssid, ssid->len);
	}
#ifdef USB_DEBUG
	if (rsu_debug & (RSU_DEBUG_SCAN | RSU_DEBUG_FWCMD)) {
		device_printf(sc->sc_dev,
		    "sending site survey command, active %d",
		    le32toh(cmd.active));
		if (ssid != NULL) {
			printf(", ssid: ");
			ieee80211_print_essid(cmd.ssid, le32toh(cmd.ssidlen));
		}
		printf("\n");
	}
#endif
	return (FUNC8(sc, R92S_CMD_SITE_SURVEY, &cmd, sizeof(cmd)));
}