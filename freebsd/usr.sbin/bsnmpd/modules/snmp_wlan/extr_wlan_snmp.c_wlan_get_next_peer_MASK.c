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
typedef  scalar_t__ uint ;
struct wlan_peer {int dummy; } ;
struct wlan_iface {scalar_t__ mode; int /*<<< orphan*/  peerlist; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int IEEE80211_ADDR_LEN ; 
 int IFNAMSIZ ; 
 struct wlan_peer* FUNC0 (int /*<<< orphan*/ *) ; 
 struct wlan_peer* FUNC1 (struct wlan_peer*,int /*<<< orphan*/ ) ; 
 scalar_t__ WlanIfaceOperatingModeType_meshPoint ; 
 struct wlan_iface* FUNC2 (char*) ; 
 struct wlan_peer* FUNC3 (struct wlan_iface*,char*) ; 
 struct wlan_iface* FUNC4 () ; 
 scalar_t__ FUNC5 (struct asn_oid const*,scalar_t__,char*,char*) ; 
 struct wlan_iface* FUNC6 (struct wlan_iface*) ; 
 int /*<<< orphan*/  wp ; 

__attribute__((used)) static struct wlan_peer *
FUNC7(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
	char wname[IFNAMSIZ];
	char pmac[IEEE80211_ADDR_LEN];
	struct wlan_peer *wip;

	if (oid->len - sub == 0) {
		for (*wif = FUNC4(); *wif != NULL;
		    *wif = FUNC6(*wif)) {
			if ((*wif)->mode ==
			    WlanIfaceOperatingModeType_meshPoint)
				continue;
			wip = FUNC0(&(*wif)->peerlist);
			if (wip != NULL)
				return (wip);
		}
		return (NULL);
	}

	if (FUNC5(oid, sub, wname, pmac) < 0 ||
	    (*wif = FUNC2(wname)) == NULL ||
	    (wip = FUNC3(*wif, pmac)) == NULL)
		return (NULL);

	if ((wip = FUNC1(wip, wp)) != NULL)
		return (wip);

	while ((*wif = FUNC6(*wif)) != NULL) {
		if ((*wif)->mode == WlanIfaceOperatingModeType_meshPoint)
			continue;
		if ((wip = FUNC0(&(*wif)->peerlist)) != NULL)
			break;
	}

	return (wip);
}