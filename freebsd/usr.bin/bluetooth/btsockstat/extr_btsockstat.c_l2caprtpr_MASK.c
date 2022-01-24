#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  this ;
typedef  int /*<<< orphan*/  rt ;
struct TYPE_4__ {int /*<<< orphan*/  src; scalar_t__ hook; } ;
typedef  TYPE_1__ ng_btsocket_l2cap_rtentry_t ;
typedef  int /*<<< orphan*/ * ng_btsocket_l2cap_rtentry_p ;
typedef  int /*<<< orphan*/  kvm_t ;
struct TYPE_5__ {scalar_t__ n_value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 size_t N_L2CAP_RAW_RT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 TYPE_2__* nl ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(kvm_t *kvmd, u_long addr)
{
	ng_btsocket_l2cap_rtentry_p	this = NULL, next = NULL;
	ng_btsocket_l2cap_rtentry_t	rt;
	int				first = 1;

	if (addr == 0)
		return;

	if (FUNC3(kvmd, addr, (char *) &this, sizeof(this)) < 0)
		return;

	for ( ; this != NULL; this = next) {
		if (FUNC3(kvmd, (u_long) this, (char *) &rt, sizeof(rt)) < 0)
			return;

		next = FUNC0(&rt, next);

		if (first) {
			first = 0;
			FUNC2(stdout,
"Known %sL2CAP routes\n", (addr == nl[N_L2CAP_RAW_RT].n_value)?  "raw " : "");
			FUNC2(stdout,
"%-8.8s %-8.8s %-17.17s\n",	"RTentry",
				"Hook",
				"BD_ADDR");
		}

		FUNC2(stdout,
"%-8lx %-8lx %-17.17d\n",
			(unsigned long) this,
			(unsigned long) rt.hook,
			FUNC1(&rt.src, NULL, 0));
	}
}