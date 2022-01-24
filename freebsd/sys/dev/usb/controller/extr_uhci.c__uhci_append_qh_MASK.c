#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  page_cache; int /*<<< orphan*/  qh_self; int /*<<< orphan*/  qh_h_next; struct TYPE_5__* h_next; struct TYPE_5__* h_prev; } ;
typedef  TYPE_1__ uhci_qh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uhci_qh_t *
FUNC2(uhci_qh_t *sqh, uhci_qh_t *last)
{
	FUNC0(11, "%p to %p\n", sqh, last);

	if (sqh->h_prev != NULL) {
		/* should not happen */
		FUNC0(0, "QH already linked!\n");
		return (last);
	}
	/* (sc->sc_bus.mtx) must be locked */

	sqh->h_next = last->h_next;
	sqh->qh_h_next = last->qh_h_next;

	sqh->h_prev = last;

	FUNC1(sqh->page_cache);

	/*
	 * The "last->h_next->h_prev" is never followed:
	 *
	 * "sqh->h_next->h_prev" = sqh;
	 */

	last->h_next = sqh;
	last->qh_h_next = sqh->qh_self;

	FUNC1(last->page_cache);

	return (sqh);
}