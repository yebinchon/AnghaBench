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
struct TYPE_3__ {int /*<<< orphan*/  encap; int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  in6_gif_srcaddr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* ipv6_encap_cfg ; 
 int /*<<< orphan*/  ipv6_srcaddrtab ; 
 int FUNC3 (TYPE_1__*) ; 

void
FUNC4(void)
{
	int i;

	if (!FUNC0(curvnet))
		return;

	ipv6_srcaddrtab = FUNC2(in6_gif_srcaddr,
	    NULL, M_WAITOK);
	for (i = 0; i < FUNC3(ipv6_encap_cfg); i++)
		ipv6_encap_cfg[i].cookie = FUNC1(
		    &ipv6_encap_cfg[i].encap, NULL, M_WAITOK);
}