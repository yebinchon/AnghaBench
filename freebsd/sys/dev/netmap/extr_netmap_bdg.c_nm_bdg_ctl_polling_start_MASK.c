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
struct nmreq_vale_polling {int dummy; } ;
struct nm_bdg_polling_state {int configured; int stopped; struct nm_bdg_polling_state* kthreads; struct netmap_bwrap_adapter* bna; } ;
struct netmap_bwrap_adapter {int /*<<< orphan*/  hwna; struct nm_bdg_polling_state* na_polling_state; } ;
struct netmap_adapter {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct nmreq_vale_polling*,struct netmap_adapter*,struct nm_bdg_polling_state*) ; 
 scalar_t__ FUNC1 (struct nm_bdg_polling_state*) ; 
 int FUNC2 (struct nm_bdg_polling_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct nm_bdg_polling_state*) ; 
 struct nm_bdg_polling_state* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct nmreq_vale_polling *req, struct netmap_adapter *na)
{
	struct nm_bdg_polling_state *bps;
	struct netmap_bwrap_adapter *bna;
	int error;

	bna = (struct netmap_bwrap_adapter *)na;
	if (bna->na_polling_state) {
		FUNC5("ERROR adapter already in polling mode");
		return EFAULT;
	}

	bps = FUNC4(sizeof(*bps));
	if (!bps)
		return ENOMEM;
	bps->configured = false;
	bps->stopped = true;

	if (FUNC0(req, na, bps)) {
		FUNC3(bps);
		return EINVAL;
	}

	if (FUNC1(bps)) {
		FUNC3(bps);
		return EFAULT;
	}

	bps->configured = true;
	bna->na_polling_state = bps;
	bps->bna = bna;

	/* disable interrupts if possible */
	FUNC6(bna->hwna, 0);
	/* start kthread now */
	error = FUNC2(bps);
	if (error) {
		FUNC5("ERROR nm_bdg_polling_start_kthread()");
		FUNC3(bps->kthreads);
		FUNC3(bps);
		bna->na_polling_state = NULL;
		FUNC6(bna->hwna, 1);
	}
	return error;
}