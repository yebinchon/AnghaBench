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
typedef  int /*<<< orphan*/  uint8_t ;
struct wlan_iface {scalar_t__ mac_policy; int mac_nacls; int /*<<< orphan*/  wname; scalar_t__ macsupported; } ;
struct ieee80211req_maclist {int dummy; } ;
struct ieee80211req {int /*<<< orphan*/  i_type; void* i_val; int /*<<< orphan*/  i_name; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  IEEE80211_IOC_MACCMD ; 
 void* IEEE80211_MACCMD_LIST ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCG80211 ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ wlanMACAccessControlPolicy_radius ; 
 int /*<<< orphan*/  FUNC6 (struct wlan_iface*,struct ieee80211req_maclist const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct wlan_iface *wif)
{
	int i, nacls, val = IEEE80211_MACCMD_LIST;
	size_t argsize = 0;
	uint8_t *data;
	struct ieee80211req ireq;
	const struct ieee80211req_maclist *acllist;

	if (wif->mac_policy == wlanMACAccessControlPolicy_radius) {
		wif->mac_nacls = 0;
		return (0);
	}

	FUNC2(&ireq, 0, sizeof(struct ieee80211req));
	FUNC4(ireq.i_name, wif->wname, IFNAMSIZ);
	ireq.i_type = IEEE80211_IOC_MACCMD;
	ireq.i_val = IEEE80211_MACCMD_LIST;


	if (FUNC0(sock, SIOCG80211, &ireq) < 0) {
		if (errno != EINVAL) {
			FUNC5(LOG_ERR, "iface %s - get param: ioctl(%d) "
			    "failed: %s", wif->wname, ireq.i_type,
			    FUNC3(errno));
			wif->macsupported = 0;
			return (-1);
		}
	}

	if (argsize == 0) {
		wif->mac_nacls = 0;
		return (0);
	}

	if ((data = (uint8_t *)FUNC1(argsize)) == NULL)
		return (-1);

	if (FUNC7(wif->wname, IEEE80211_IOC_MACCMD, &val, data,
	    &argsize, 0) < 0)
		return (-1);

	nacls = argsize / sizeof(*acllist);
	acllist = (struct ieee80211req_maclist *) data;
	for (i = 0; i < nacls; i++)
		(void)FUNC6(wif, acllist + i);

	wif->mac_nacls = nacls;
	return (0);
}