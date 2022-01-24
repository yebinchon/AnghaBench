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
struct wlan_mesh_route {int dummy; } ;
struct wlan_iface {int /*<<< orphan*/  mesh_routelist; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int IEEE80211_ADDR_LEN ; 
 int IFNAMSIZ ; 
 struct wlan_mesh_route* FUNC0 (int /*<<< orphan*/ *) ; 
 struct wlan_mesh_route* FUNC1 (struct wlan_mesh_route*,int /*<<< orphan*/ ) ; 
 struct wlan_iface* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct asn_oid const*,scalar_t__,char*,char*) ; 
 struct wlan_mesh_route* FUNC4 (struct wlan_iface*,char*) ; 
 struct wlan_iface* FUNC5 () ; 
 struct wlan_iface* FUNC6 (struct wlan_iface*) ; 
 int /*<<< orphan*/  wr ; 

__attribute__((used)) static struct wlan_mesh_route *
FUNC7(const struct asn_oid *oid, uint sub,
    struct wlan_iface **wif)
{
	char wname[IFNAMSIZ];
	char dstmac[IEEE80211_ADDR_LEN];
	struct wlan_mesh_route *wmr;

	if (oid->len - sub == 0) {
		for (*wif = FUNC5(); *wif != NULL;
		    *wif = FUNC6(*wif)) {
			wmr = FUNC0(&(*wif)->mesh_routelist);
			if (wmr != NULL)
				return (wmr);
		}
		return (NULL);
	}

	if (FUNC3(oid, sub, wname, dstmac) < 0 ||
	    (*wif = FUNC2(wname)) == NULL ||
	    (wmr = FUNC4(*wif, dstmac)) == NULL)
		return (NULL);

	if ((wmr = FUNC1(wmr, wr)) != NULL)
		return (wmr);

	while ((*wif = FUNC6(*wif)) != NULL)
		if ((wmr = FUNC0(&(*wif)->mesh_routelist)) != NULL)
			break;

	return (wmr);
}