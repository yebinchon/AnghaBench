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
struct nm_bdg_polling_state {int configured; } ;
struct netmap_bwrap_adapter {int /*<<< orphan*/  hwna; struct nm_bdg_polling_state* na_polling_state; } ;
struct netmap_adapter {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct nm_bdg_polling_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct nm_bdg_polling_state*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct netmap_adapter *na)
{
	struct netmap_bwrap_adapter *bna = (struct netmap_bwrap_adapter *)na;
	struct nm_bdg_polling_state *bps;

	if (!bna->na_polling_state) {
		FUNC2("ERROR adapter is not in polling mode");
		return EFAULT;
	}
	bps = bna->na_polling_state;
	FUNC0(bna->na_polling_state);
	bps->configured = false;
	FUNC1(bps);
	bna->na_polling_state = NULL;
	/* reenable interrupts */
	FUNC3(bna->hwna, 1);
	return 0;
}