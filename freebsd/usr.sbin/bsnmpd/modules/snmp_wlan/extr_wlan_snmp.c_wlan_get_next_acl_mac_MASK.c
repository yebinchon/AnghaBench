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
struct wlan_mac_mac {int dummy; } ;
struct wlan_iface {int /*<<< orphan*/  mac_maclist; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int IEEE80211_ADDR_LEN ; 
 int IFNAMSIZ ; 
 struct wlan_mac_mac* FUNC0 (int /*<<< orphan*/ *) ; 
 struct wlan_mac_mac* FUNC1 (struct wlan_mac_mac*,int /*<<< orphan*/ ) ; 
 struct wlan_iface* FUNC2 (char*) ; 
 struct wlan_iface* FUNC3 () ; 
 struct wlan_mac_mac* FUNC4 (struct wlan_iface*,char*) ; 
 scalar_t__ FUNC5 (struct asn_oid const*,scalar_t__,char*,char*) ; 
 struct wlan_iface* FUNC6 (struct wlan_iface*) ; 
 int /*<<< orphan*/  wm ; 

__attribute__((used)) static struct wlan_mac_mac *
FUNC7(const struct asn_oid *oid, uint sub,
    struct wlan_iface **wif)
{
	char wname[IFNAMSIZ];
	char mac[IEEE80211_ADDR_LEN];
	struct wlan_mac_mac *wmm;

	if (oid->len - sub == 0) {
		for (*wif = FUNC3(); *wif != NULL;
		    *wif = FUNC6(*wif)) {
			wmm = FUNC0(&(*wif)->mac_maclist);
			if (wmm != NULL)
				return (wmm);
		}
		return (NULL);
	}

	if (FUNC5(oid, sub, wname, mac) < 0 ||
	    (*wif = FUNC2(wname)) == NULL ||
	    (wmm = FUNC4(*wif, mac)) == NULL)
		return (NULL);

	if ((wmm = FUNC1(wmm, wm)) != NULL)
		return (wmm);

	while ((*wif = FUNC6(*wif)) != NULL)
		if ((wmm = FUNC0(&(*wif)->mac_maclist)) != NULL)
			break;

	return (wmm);
}