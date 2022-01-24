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
struct blockif_sig_elem {int /*<<< orphan*/  bse_mtx; int /*<<< orphan*/  bse_cond; scalar_t__ bse_pending; scalar_t__ bse_next; } ;
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t*,uintptr_t,uintptr_t) ; 
 struct blockif_sig_elem* blockif_bse_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(int signal, enum ev_type type, void *arg)
{
	struct blockif_sig_elem *bse;

	for (;;) {
		/*
		 * Process the entire list even if not intended for
		 * this thread.
		 */
		do {
			bse = blockif_bse_head;
			if (bse == NULL)
				return;
		} while (!FUNC0((uintptr_t *)&blockif_bse_head,
					    (uintptr_t)bse,
					    (uintptr_t)bse->bse_next));

		FUNC2(&bse->bse_mtx);
		bse->bse_pending = 0;
		FUNC1(&bse->bse_cond);
		FUNC3(&bse->bse_mtx);
	}
}