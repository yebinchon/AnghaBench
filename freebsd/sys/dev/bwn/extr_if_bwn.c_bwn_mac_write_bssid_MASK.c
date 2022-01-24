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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  ic_macaddr; } ;
struct bwn_softc {int /*<<< orphan*/  sc_bssid; TYPE_1__ sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_MACFILTER_BSSID ; 
 int IEEE80211_ADDR_LEN ; 
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	uint32_t tmp;
	int i;
	uint8_t mac_bssid[IEEE80211_ADDR_LEN * 2];

	FUNC1(mac, BWN_MACFILTER_BSSID, sc->sc_bssid);
	FUNC3(mac_bssid, sc->sc_ic.ic_macaddr, IEEE80211_ADDR_LEN);
	FUNC3(mac_bssid + IEEE80211_ADDR_LEN, sc->sc_bssid,
	    IEEE80211_ADDR_LEN);

	for (i = 0; i < FUNC0(mac_bssid); i += sizeof(uint32_t)) {
		tmp = (uint32_t) (mac_bssid[i + 0]);
		tmp |= (uint32_t) (mac_bssid[i + 1]) << 8;
		tmp |= (uint32_t) (mac_bssid[i + 2]) << 16;
		tmp |= (uint32_t) (mac_bssid[i + 3]) << 24;
		FUNC2(mac, 0x20 + i, tmp);
	}
}