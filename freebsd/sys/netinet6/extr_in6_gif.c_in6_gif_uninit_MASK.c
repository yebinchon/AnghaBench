#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * V_ipv6_hashtbl ; 
 int /*<<< orphan*/ * V_ipv6_srchashtbl ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ipv6_encap_cfg ; 
 int /*<<< orphan*/  ipv6_srcaddrtab ; 
 int FUNC5 (TYPE_1__*) ; 

void
FUNC6(void)
{
	int i;

	if (FUNC1(curvnet)) {
		for (i = 0; i < FUNC5(ipv6_encap_cfg); i++)
			FUNC3(ipv6_encap_cfg[i].cookie);
		FUNC4(ipv6_srcaddrtab);
	}
	if (V_ipv6_hashtbl != NULL) {
		FUNC2(V_ipv6_hashtbl);
		V_ipv6_hashtbl = NULL;
		FUNC0();
		FUNC2(V_ipv6_srchashtbl);
	}
}