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
struct nm_bdg_polling_state {int stopped; int ncpus; struct nm_bdg_kthread* kthreads; } ;
struct nm_bdg_kthread {int /*<<< orphan*/  nmk; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(struct nm_bdg_polling_state *bps)
{
	int error, i, j;

	if (!bps) {
		FUNC2("polling is not configured");
		return EFAULT;
	}
	bps->stopped = false;

	for (i = 0; i < bps->ncpus; i++) {
		struct nm_bdg_kthread *t = bps->kthreads + i;
		error = FUNC0(t->nmk);
		if (error) {
			FUNC2("error in nm_kthread_start(): %d", error);
			goto cleanup;
		}
	}
	return 0;

cleanup:
	for (j = 0; j < i; j++) {
		struct nm_bdg_kthread *t = bps->kthreads + i;
		FUNC1(t->nmk);
	}
	bps->stopped = true;
	return error;
}