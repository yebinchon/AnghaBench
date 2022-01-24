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
typedef  int uint32_t ;
typedef  scalar_t__ uint ;
struct TYPE_2__ {struct ieee80211_txparam* params; } ;
struct wlan_iface {scalar_t__ status; TYPE_1__ txparams; } ;
struct ieee80211_txparam {int dummy; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int IEEE80211_MODE_MAX ; 
 int IFNAMSIZ ; 
 scalar_t__ RowStatus_active ; 
 struct wlan_iface* FUNC0 (char*) ; 
 struct wlan_iface* FUNC1 () ; 
 struct wlan_iface* FUNC2 (struct wlan_iface*) ; 
 scalar_t__ FUNC3 (struct asn_oid const*,scalar_t__,char*,int*) ; 

__attribute__((used)) static struct ieee80211_txparam *
FUNC4(const struct asn_oid *oid, uint sub,
    struct wlan_iface **wif, uint32_t *phy)
{
	char wname[IFNAMSIZ];

	if (oid->len - sub == 0) {
		for (*wif = FUNC1(); *wif != NULL;
		    *wif = FUNC2(*wif)) {
			if ((*wif)->status != RowStatus_active)
				continue;
			*phy = 1;
			return ((*wif)->txparams.params);
		}
		return (NULL);
	}

	if (FUNC3(oid, sub, wname, phy) < 0)
		return (NULL);

	if (*phy == 0 || (*wif = FUNC0(wname)) == NULL)
		return (NULL);

	if (++(*phy) <= IEEE80211_MODE_MAX)
		return ((*wif)->txparams.params + *phy - 1);

	*phy = 1;
	while ((*wif = FUNC2(*wif)) != NULL)
		if ((*wif)->status == RowStatus_active)
			return ((*wif)->txparams.params);

	return (NULL);
}