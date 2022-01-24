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
struct wlan_iface {int macsupported; size_t mac_nacls; int /*<<< orphan*/  wname; void* mac_policy; } ;
struct ieee80211req_maclist {int dummy; } ;
struct ieee80211req {int /*<<< orphan*/  i_type; void* i_val; int /*<<< orphan*/  i_name; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  IEEE80211_IOC_MACCMD ; 
 int IEEE80211_MACCMD_LIST ; 
 void* IEEE80211_MACCMD_POLICY ; 
#define  IEEE80211_MACCMD_POLICY_ALLOW 131 
#define  IEEE80211_MACCMD_POLICY_DENY 130 
#define  IEEE80211_MACCMD_POLICY_OPEN 129 
#define  IEEE80211_MACCMD_POLICY_RADIUS 128 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCG80211 ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* wlanMACAccessControlPolicy_allow ; 
 void* wlanMACAccessControlPolicy_deny ; 
 void* wlanMACAccessControlPolicy_open ; 
 void* wlanMACAccessControlPolicy_radius ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct wlan_iface *wif)
{
	int val = IEEE80211_MACCMD_POLICY;
	size_t argsize = 0;
	struct ieee80211req ireq;

	FUNC1(&ireq, 0, sizeof(struct ieee80211req));
	FUNC3(ireq.i_name, wif->wname, IFNAMSIZ);
	ireq.i_type = IEEE80211_IOC_MACCMD;
	ireq.i_val = IEEE80211_MACCMD_POLICY;

	if (FUNC0(sock, SIOCG80211, &ireq) < 0) {
		if (errno != EINVAL) {
			FUNC4(LOG_ERR, "iface %s - get param: ioctl(%d) "
			    "failed: %s", wif->wname, ireq.i_type,
			    FUNC2(errno));
			wif->macsupported = 0;
			return (-1);
		} else {
			wif->macsupported = 1;
			wif->mac_policy = wlanMACAccessControlPolicy_open;
			return (0);
		}

	}

	wif->macsupported = 1;

	switch (val) {
	case IEEE80211_MACCMD_POLICY_ALLOW:
		wif->mac_policy = wlanMACAccessControlPolicy_allow;
		break;
	case IEEE80211_MACCMD_POLICY_DENY:
		wif->mac_policy = wlanMACAccessControlPolicy_deny;
		break;
	case IEEE80211_MACCMD_POLICY_RADIUS:
		wif->mac_policy = wlanMACAccessControlPolicy_radius;
		break;
	case IEEE80211_MACCMD_POLICY_OPEN:
		/* FALLTHROUGH */
	default:
		wif->mac_policy = wlanMACAccessControlPolicy_open;
		break;
	}

	argsize = 0;
	val = IEEE80211_MACCMD_LIST;
	if (FUNC5(wif->wname, IEEE80211_IOC_MACCMD, &val, NULL,
	    &argsize, 0) < 0)
		return (-1);

	wif->mac_nacls = argsize / sizeof(struct ieee80211req_maclist *);
	return (0);
}