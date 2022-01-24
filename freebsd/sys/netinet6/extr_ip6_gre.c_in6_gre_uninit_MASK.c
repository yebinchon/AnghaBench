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
struct gre_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct gre_list* V_ipv6_hashtbl ; 
 scalar_t__ V_ipv6_sockets ; 
 struct gre_list* V_ipv6_srchashtbl ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  ecookie ; 
 int /*<<< orphan*/  FUNC2 (struct gre_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipv6_srcaddrtab ; 

void
FUNC5(void)
{

	if (FUNC1(curvnet)) {
		FUNC3(ecookie);
		FUNC4(ipv6_srcaddrtab);
	}
	if (V_ipv6_hashtbl != NULL) {
		FUNC2(V_ipv6_hashtbl);
		V_ipv6_hashtbl = NULL;
		FUNC0();
		FUNC2(V_ipv6_srchashtbl);
		FUNC2((struct gre_list *)V_ipv6_sockets);
	}
}