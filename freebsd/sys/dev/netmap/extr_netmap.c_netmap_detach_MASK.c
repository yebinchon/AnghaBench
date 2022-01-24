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
struct netmap_adapter {int na_flags; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct netmap_adapter* FUNC0 (struct ifnet*) ; 
 int NAF_NATIVE ; 
 int NAF_ZOMBIE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  NM_KR_LOCKED ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ifnet *ifp)
{
	struct netmap_adapter *na = FUNC0(ifp);

	if (!na)
		return;

	FUNC1();
	FUNC5(na, NM_KR_LOCKED);
	/*
	 * if the netmap adapter is not native, somebody
	 * changed it, so we can not release it here.
	 * The NAF_ZOMBIE flag will notify the new owner that
	 * the driver is gone.
	 */
	if (!(na->na_flags & NAF_NATIVE) || !FUNC3(na)) {
		na->na_flags |= NAF_ZOMBIE;
	}
	/* give active users a chance to notice that NAF_ZOMBIE has been
	 * turned on, so that they can stop and return an error to userspace.
	 * Note that this becomes a NOP if there are no active users and,
	 * therefore, the put() above has deleted the na, since now NA(ifp) is
	 * NULL.
	 */
	FUNC4(ifp);
	FUNC2();
}