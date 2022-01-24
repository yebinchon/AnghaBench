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
struct namedobj_instance {int dummy; } ;
struct ipfw_iface {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 scalar_t__ V_ipfw_vnet_ready ; 
 struct ip_fw_chain V_layer3_chain ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,struct ipfw_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*,struct ipfw_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 scalar_t__ FUNC6 (struct namedobj_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg, struct ifnet *ifp)
{
	struct ip_fw_chain *ch;
	struct ipfw_iface *iif;
	struct namedobj_instance *ii;
	uintptr_t htype;

	if (V_ipfw_vnet_ready == 0)
		return;

	ch = &V_layer3_chain;
	htype = (uintptr_t)arg;

	FUNC1(ch);
	ii = FUNC0(ch);
	if (ii == NULL) {
		FUNC2(ch);
		return;
	}
	iif = (struct ipfw_iface*)FUNC6(ii, 0,
	    FUNC5(ifp));
	if (iif != NULL) {
		if (htype == 1)
			FUNC3(ch, iif, ifp->if_index);
		else
			FUNC4(ch, iif, ifp->if_index);
	}
	FUNC2(ch);
}