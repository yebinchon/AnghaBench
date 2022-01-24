#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* rpcblist_ptr ;
struct TYPE_8__ {unsigned int r_prog; int /*<<< orphan*/  r_netid; int /*<<< orphan*/  r_vers; } ;
struct TYPE_6__ {unsigned int r_prog; int /*<<< orphan*/  r_netid; int /*<<< orphan*/  r_vers; int /*<<< orphan*/  r_addr; } ;
struct TYPE_7__ {TYPE_1__ rpcb_map; struct TYPE_7__* rpcb_next; } ;
typedef  TYPE_3__ RPCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* list_rbl ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(unsigned int prog)
{
	RPCB reg;
	register rpcblist_ptr rbl;

	for (rbl = list_rbl; rbl != NULL; rbl = rbl->rpcb_next) {
		if ((rbl->rpcb_map.r_prog != prog))
			continue;
		if (FUNC1(rbl->rpcb_map.r_netid, rbl->rpcb_map.r_addr))
			continue;
		reg.r_prog = rbl->rpcb_map.r_prog;
		reg.r_vers = rbl->rpcb_map.r_vers;
		reg.r_netid = FUNC3(rbl->rpcb_map.r_netid);
		(void) FUNC2(&reg, "superuser");
		FUNC0(reg.r_netid);
	}
}