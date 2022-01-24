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
struct scope6_id {scalar_t__* s6id_list; } ;
struct ifnet {scalar_t__ if_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int IPV6_ADDR_SCOPE_INTFACELOCAL ; 
 int IPV6_ADDR_SCOPE_LINKLOCAL ; 
 struct scope6_id* FUNC2 (struct ifnet*) ; 
 scalar_t__ V_if_index ; 

__attribute__((used)) static int
FUNC3(struct ifnet *ifp, struct scope6_id *idlist)
{
	int i;
	int error = 0;
	struct scope6_id *sid = NULL;

	FUNC0(ifp);
	sid = FUNC2(ifp);

	if (!sid) {	/* paranoid? */
		FUNC1(ifp);
		return (EINVAL);
	}

	/*
	 * XXX: We need more consistency checks of the relationship among
	 * scopes (e.g. an organization should be larger than a site).
	 */

	/*
	 * TODO(XXX): after setting, we should reflect the changes to
	 * interface addresses, routing table entries, PCB entries...
	 */

	for (i = 0; i < 16; i++) {
		if (idlist->s6id_list[i] &&
		    idlist->s6id_list[i] != sid->s6id_list[i]) {
			/*
			 * An interface zone ID must be the corresponding
			 * interface index by definition.
			 */
			if (i == IPV6_ADDR_SCOPE_INTFACELOCAL &&
			    idlist->s6id_list[i] != ifp->if_index) {
				FUNC1(ifp);
				return (EINVAL);
			}

			if (i == IPV6_ADDR_SCOPE_LINKLOCAL &&
			    idlist->s6id_list[i] > V_if_index) {
				/*
				 * XXX: theoretically, there should be no
				 * relationship between link IDs and interface
				 * IDs, but we check the consistency for
				 * safety in later use.
				 */
				FUNC1(ifp);
				return (EINVAL);
			}

			/*
			 * XXX: we must need lots of work in this case,
			 * but we simply set the new value in this initial
			 * implementation.
			 */
			sid->s6id_list[i] = idlist->s6id_list[i];
		}
	}
	FUNC1(ifp);

	return (error);
}