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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint ;
struct wlan_iface {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct asn_oid {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct asn_oid const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct ieee80211_channel* FUNC1 (struct wlan_iface*,int /*<<< orphan*/ ) ; 
 struct wlan_iface* FUNC2 (char*) ; 

__attribute__((used)) static struct ieee80211_channel *
FUNC3(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
	uint32_t cindex;
	char wname[IFNAMSIZ];

	if (FUNC0(oid, sub, wname, &cindex) < 0)
		return (NULL);

	if ((*wif = FUNC2(wname)) == NULL)
		return (NULL);

	return (FUNC1(*wif, cindex));
}