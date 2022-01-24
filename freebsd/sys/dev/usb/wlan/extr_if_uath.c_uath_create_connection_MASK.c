#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct uath_softc {struct ieee80211com sc_ic; } ;
struct uath_cmd_rateset {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * set; int /*<<< orphan*/  length; } ;
struct TYPE_4__ {void* wlanmode; TYPE_1__ rateset; } ;
struct uath_cmd_create_connection {TYPE_2__ connattr; void* size; void* bssid; void* connid; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_bss; } ;
struct ieee80211_rateset {int /*<<< orphan*/  rs_nrates; int /*<<< orphan*/  rs_rates; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_chan; struct ieee80211_rateset ni_rates; } ;
typedef  int /*<<< orphan*/  create ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WDCMSG_CREATE_CONNECTION ; 
 int WLAN_MODE_11a ; 
 int WLAN_MODE_11b ; 
 int WLAN_MODE_11g ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uath_cmd_create_connection*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct uath_softc*,int /*<<< orphan*/ ,struct uath_cmd_create_connection*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct uath_softc *sc, uint32_t connid)
{
	const struct ieee80211_rateset *rs;
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);
	struct ieee80211_node *ni;
	struct uath_cmd_create_connection create;

	ni = FUNC6(vap->iv_bss);
	FUNC7(&create, 0, sizeof(create));
	create.connid = FUNC4(connid);
	create.bssid = FUNC4(0);
	/* XXX packed or not?  */
	create.size = FUNC4(sizeof(struct uath_cmd_rateset));

	rs = &ni->ni_rates;
	create.connattr.rateset.length = rs->rs_nrates;
	FUNC3(rs->rs_rates, &create.connattr.rateset.set[0],
	    rs->rs_nrates);

	/* XXX turbo */
	if (FUNC0(ni->ni_chan))
		create.connattr.wlanmode = FUNC4(WLAN_MODE_11a);
	else if (FUNC1(ni->ni_chan))
		create.connattr.wlanmode = FUNC4(WLAN_MODE_11g);
	else
		create.connattr.wlanmode = FUNC4(WLAN_MODE_11b);
	FUNC5(ni);

	return FUNC8(sc, WDCMSG_CREATE_CONNECTION, &create,
	    sizeof create, 0);
}