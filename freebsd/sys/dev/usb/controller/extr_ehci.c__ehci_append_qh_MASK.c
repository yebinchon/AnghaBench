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
struct TYPE_5__ {int /*<<< orphan*/  page_cache; int /*<<< orphan*/  qh_self; int /*<<< orphan*/  qh_link; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ ehci_qh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ehci_qh_t *
FUNC2(ehci_qh_t *sqh, ehci_qh_t *last)
{
	FUNC0(11, "%p to %p\n", sqh, last);

	if (sqh->prev != NULL) {
		/* should not happen */
		FUNC0(0, "QH already linked!\n");
		return (last);
	}
	/* (sc->sc_bus.mtx) must be locked */

	sqh->next = last->next;
	sqh->qh_link = last->qh_link;

	sqh->prev = last;

	FUNC1(sqh->page_cache);

	/*
	 * the last->next->prev is never followed: sqh->next->prev = sqh;
	 */

	last->next = sqh;
	last->qh_link = sqh->qh_self;

	FUNC1(last->page_cache);

	return (sqh);
}