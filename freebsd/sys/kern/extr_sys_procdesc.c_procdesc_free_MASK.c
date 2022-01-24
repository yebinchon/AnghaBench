#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct procdesc {int pd_flags; TYPE_1__ pd_selinfo; int /*<<< orphan*/ * pd_proc; int /*<<< orphan*/  pd_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PDF_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (struct procdesc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  procdesc_zone ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct procdesc*) ; 

__attribute__((used)) static void
FUNC5(struct procdesc *pd)
{

	/*
	 * When the last reference is released, we assert that the descriptor
	 * has been closed, but not that the process has exited, as we will
	 * detach the descriptor before the process dies if the descript is
	 * closed, as we can't wait synchronously.
	 */
	if (FUNC3(&pd->pd_refcount)) {
		FUNC0(pd->pd_proc == NULL,
		    ("procdesc_free: pd_proc != NULL"));
		FUNC0((pd->pd_flags & PDF_CLOSED),
		    ("procdesc_free: !PDF_CLOSED"));

		FUNC2(&pd->pd_selinfo.si_note);
		FUNC1(pd);
		FUNC4(procdesc_zone, pd);
	}
}