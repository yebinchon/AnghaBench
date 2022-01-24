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
typedef  int /*<<< orphan*/  u_int ;
struct netmap_adapter {int na_flags; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct netmap_adapter* FUNC0 (struct ifnet*) ; 
 int NAF_SKIP_INTR ; 
 int NM_IRQ_PASS ; 
 int FUNC1 (struct netmap_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(struct ifnet *ifp, u_int q, u_int *work_done)
{
	struct netmap_adapter *na = FUNC0(ifp);

	/*
	 * XXX emulated netmap mode sets NAF_SKIP_INTR so
	 * we still use the regular driver even though the previous
	 * check fails. It is unclear whether we should use
	 * nm_native_on() here.
	 */
	if (!FUNC2(na))
		return NM_IRQ_PASS;

	if (na->na_flags & NAF_SKIP_INTR) {
		FUNC3("use regular interrupt");
		return NM_IRQ_PASS;
	}

	return FUNC1(na, q, work_done);
}