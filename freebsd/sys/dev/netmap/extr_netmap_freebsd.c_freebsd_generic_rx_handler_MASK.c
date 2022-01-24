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
struct netmap_generic_adapter {int /*<<< orphan*/  (* save_if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int FUNC2 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,struct mbuf*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct ifnet *ifp, struct mbuf *m)
{
	int stolen;

	if (FUNC5(!FUNC1(ifp))) {
		FUNC3(1, "Warning: RX packet intercepted, but no"
				" emulated adapter");
		return;
	}

	stolen = FUNC2(ifp, m);
	if (!stolen) {
		struct netmap_generic_adapter *gna =
				(struct netmap_generic_adapter *)FUNC0(ifp);
		gna->save_if_input(ifp, m);
	}
}