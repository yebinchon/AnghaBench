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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint ;
struct TYPE_2__ {scalar_t__ params; } ;
struct wlan_iface {TYPE_1__ txparams; } ;
struct ieee80211_txparam {int dummy; } ;
struct asn_oid {int dummy; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_MODE_MAX ; 
 int IFNAMSIZ ; 
 struct wlan_iface* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct asn_oid const*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 

__attribute__((used)) static struct ieee80211_txparam *
FUNC2(const struct asn_oid *oid, uint sub, struct wlan_iface **wif,
    uint32_t *phy)
{
	char wname[IFNAMSIZ];

	if (FUNC1(oid, sub, wname, phy) < 0)
		return (NULL);

	if ((*wif = FUNC0(wname)) == NULL)
		return (NULL);

	if (*phy == 0 || *phy > IEEE80211_MODE_MAX)
		return (NULL);

	return ((*wif)->txparams.params + *phy - 1);
}