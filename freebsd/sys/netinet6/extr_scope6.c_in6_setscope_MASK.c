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
typedef  int u_int32_t ;
struct scope6_id {int* s6id_list; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr16; } ;
struct ifnet {int if_flags; int if_index; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 int IPV6_ADDR_SCOPE_GLOBAL ; 
 int IPV6_ADDR_SCOPE_INTFACELOCAL ; 
 int IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 struct scope6_id* FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct in6_addr*) ; 

int
FUNC6(struct in6_addr *in6, struct ifnet *ifp, u_int32_t *ret_id)
{
	int scope;
	u_int32_t zoneid = 0;
	struct scope6_id *sid;

	/*
	 * special case: the loopback address can only belong to a loopback
	 * interface.
	 */
	if (FUNC0(in6)) {
		if (!(ifp->if_flags & IFF_LOOPBACK))
			return (EINVAL);
	} else {
		scope = FUNC5(in6);
		if (scope == IPV6_ADDR_SCOPE_INTFACELOCAL ||
		    scope == IPV6_ADDR_SCOPE_LINKLOCAL) {
			/*
			 * Currently we use interface indices as the
			 * zone IDs for interface-local and link-local
			 * scopes.
			 */
			zoneid = ifp->if_index;
			in6->s6_addr16[1] = FUNC4(zoneid & 0xffff); /* XXX */
		} else if (scope != IPV6_ADDR_SCOPE_GLOBAL) {
			struct epoch_tracker et;

			FUNC1(et);
			sid = FUNC3(ifp);
			zoneid = sid->s6id_list[scope];
			FUNC2(et);
		}
	}

	if (ret_id != NULL)
		*ret_id = zoneid;

	return (0);
}