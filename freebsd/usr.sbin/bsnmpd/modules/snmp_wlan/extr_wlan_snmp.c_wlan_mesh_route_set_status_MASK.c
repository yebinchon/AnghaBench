#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
struct wlan_mesh_route {int dummy; } ;
struct wlan_iface {int dummy; } ;
struct TYPE_3__ {int integer; } ;
struct snmp_value {TYPE_1__ v; int /*<<< orphan*/  var; } ;
struct snmp_context {TYPE_2__* scratch; } ;
struct TYPE_4__ {int int1; } ;

/* Variables and functions */
 int IEEE80211_ADDR_LEN ; 
 int IFNAMSIZ ; 
 int RowStatus_active ; 
#define  RowStatus_createAndGo 129 
#define  RowStatus_destroy 128 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_INCONS_NAME ; 
 int SNMP_ERR_INCONS_VALUE ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NOSUCHNAME ; 
 struct wlan_iface* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (struct wlan_iface*,struct wlan_mesh_route*) ; 
 scalar_t__ FUNC3 (struct wlan_iface*,struct wlan_mesh_route*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlan_iface*,struct wlan_mesh_route*) ; 
 int /*<<< orphan*/  FUNC5 (struct wlan_mesh_route*) ; 
 struct wlan_mesh_route* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wlan_iface**) ; 
 struct wlan_mesh_route* FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct snmp_context *ctx, struct snmp_value *val,
    uint sub)
{
	char wname[IFNAMSIZ];
	char mac[IEEE80211_ADDR_LEN];
	struct wlan_mesh_route *wmr;
	struct wlan_iface *wif;

	if (FUNC1(&val->var, sub, wname, mac) < 0)
		return (SNMP_ERR_GENERR);
	wmr = FUNC6(&val->var, sub, &wif);

	switch (val->v.integer) {
	case RowStatus_createAndGo:
		if (wmr != NULL)
			return (SNMP_ERR_INCONS_NAME);
		break;
	case RowStatus_destroy:
		if (wmr == NULL)
			return (SNMP_ERR_NOSUCHNAME);
		ctx->scratch->int1 = RowStatus_active;
		return (SNMP_ERR_NOERROR);
	default:
		return (SNMP_ERR_INCONS_VALUE);
	}

	if ((wif = FUNC0(wname)) == NULL)
		return (SNMP_ERR_INCONS_NAME);

	if ((wmr = FUNC7(mac)) == NULL)
		return (SNMP_ERR_GENERR);

	if (FUNC3(wif, wmr) < 0) {
		FUNC5(wmr);
		return (SNMP_ERR_GENERR);
	}

	ctx->scratch->int1 = RowStatus_destroy;
	if (FUNC2(wif, wmr) < 0) {
		(void)FUNC4(wif, wmr);
		return (SNMP_ERR_GENERR);
	}

	return (SNMP_ERR_NOERROR);
}