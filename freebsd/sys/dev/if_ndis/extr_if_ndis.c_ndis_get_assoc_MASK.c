#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ieee80211com {scalar_t__ ic_opmode; int /*<<< orphan*/  ic_vaps; } ;
struct ndis_softc {int /*<<< orphan*/  ndis_dev; int /*<<< orphan*/  ndis_link; struct ieee80211com ndis_ic; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211_node {int ni_associd; } ;
struct TYPE_7__ {int nwbx_len; int /*<<< orphan*/  nwbx_macaddr; } ;
typedef  TYPE_1__ ndis_wlan_bssid_ex ;
typedef  int /*<<< orphan*/  ndis_80211_macaddr ;
struct TYPE_8__ {int nblx_items; int /*<<< orphan*/ * nblx_bssid; } ;
typedef  TYPE_2__ ndis_80211_bssid_list_ex ;
typedef  int /*<<< orphan*/  bssid ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ IEEE80211_M_STA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  OID_802_11_BSSID ; 
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ndis_softc*,TYPE_2__**) ; 
 int FUNC7 (struct ndis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC8(struct ndis_softc *sc, ndis_wlan_bssid_ex **assoc)
{
	struct ieee80211com *ic = &sc->ndis_ic;
	struct ieee80211vap     *vap;
	struct ieee80211_node   *ni;
	ndis_80211_bssid_list_ex	*bl;
	ndis_wlan_bssid_ex	*bs;
	ndis_80211_macaddr	bssid;
	int			i, len, error;

	if (!sc->ndis_link)
		return (ENOENT);

	len = sizeof(bssid);
	error = FUNC7(sc, OID_802_11_BSSID, &bssid, &len);
	if (error) {
		FUNC3(sc->ndis_dev, "failed to get bssid\n");
		return (ENOENT);
	}

	vap = FUNC0(&ic->ic_vaps);
	ni = vap->iv_bss;

	error = FUNC6(sc, &bl);
	if (error)
		return (error);

	bs = (ndis_wlan_bssid_ex *)&bl->nblx_bssid[0];
	for (i = 0; i < bl->nblx_items; i++) {
		if (FUNC1(bs->nwbx_macaddr, bssid, sizeof(bssid)) == 0) {
			*assoc = FUNC5(bs->nwbx_len, M_TEMP, M_NOWAIT);
			if (*assoc == NULL) {
				FUNC4(bl, M_TEMP);
				return (ENOMEM);
			}
			FUNC2((char *)bs, (char *)*assoc, bs->nwbx_len);
			FUNC4(bl, M_TEMP);
			if (ic->ic_opmode == IEEE80211_M_STA)
				ni->ni_associd = 1 | 0xc000; /* fake associd */
			return (0);
		}
		bs = (ndis_wlan_bssid_ex *)((char *)bs + bs->nwbx_len);
	}

	FUNC4(bl, M_TEMP);
	return (ENOENT);
}