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
struct namedobj_instance {int dummy; } ;
struct ipfw_ifc {struct ipfw_iface* iface; } ;
struct TYPE_2__ {int refcnt; int /*<<< orphan*/  name; } ;
struct ipfw_iface {scalar_t__ ifindex; int resolved; TYPE_1__ no; int /*<<< orphan*/  ifname; int /*<<< orphan*/  consumers; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ipfw_iface*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct namedobj_instance*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct namedobj_instance*,int /*<<< orphan*/ ,char*) ; 
 struct ipfw_iface* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_fw_chain*) ; 

int
FUNC12(struct ip_fw_chain *ch, char *name,
    struct ipfw_ifc *ic)
{
	struct namedobj_instance *ii;
	struct ipfw_iface *iif, *tmp;

	if (FUNC10(name) >= sizeof(iif->ifname))
		return (EINVAL);

	FUNC1(ch);

	ii = FUNC0(ch);
	if (ii == NULL) {

		/*
		 * First request to subsystem.
		 * Let's perform init.
		 */
		FUNC2(ch);
		FUNC11(ch);
		FUNC1(ch);
		ii = FUNC0(ch);
	}

	iif = (struct ipfw_iface *)FUNC7(ii, 0, name);

	if (iif != NULL) {
		iif->no.refcnt++;
		ic->iface = iif;
		FUNC2(ch);
		return (0);
	}

	FUNC2(ch);

	/* Not found. Let's create one */
	iif = FUNC8(sizeof(struct ipfw_iface), M_IPFW, M_WAITOK | M_ZERO);
	FUNC3(&iif->consumers);
	iif->no.name = iif->ifname;
	FUNC9(iif->ifname, name, sizeof(iif->ifname));

	/*
	 * Ref & link to the list.
	 *
	 * We assume  ifnet_arrival_event / ifnet_departure_event
	 * are not holding any locks.
	 */
	iif->no.refcnt = 1;
	FUNC1(ch);

	tmp = (struct ipfw_iface *)FUNC7(ii, 0, name);
	if (tmp != NULL) {
		/* Interface has been created since unlock. Ref and return */
		tmp->no.refcnt++;
		ic->iface = tmp;
		FUNC2(ch);
		FUNC4(iif, M_IPFW);
		return (0);
	}

	iif->ifindex = FUNC5(name);
	if (iif->ifindex != 0)
		iif->resolved = 1;

	FUNC6(ii, &iif->no);
	ic->iface = iif;

	FUNC2(ch);

	return (0);
}