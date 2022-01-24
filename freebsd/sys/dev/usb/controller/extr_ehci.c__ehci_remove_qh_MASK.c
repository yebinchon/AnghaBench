#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  page_cache; struct TYPE_9__* prev; TYPE_1__* next; int /*<<< orphan*/  qh_link; } ;
typedef  TYPE_2__ ehci_qh_t ;
struct TYPE_8__ {int /*<<< orphan*/  page_cache; TYPE_2__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ehci_qh_t *
FUNC2(ehci_qh_t *sqh, ehci_qh_t *last)
{
	FUNC0(11, "%p from %p\n", sqh, last);

	/* (sc->sc_bus.mtx) must be locked */

	/* only remove if not removed from a queue */
	if (sqh->prev) {

		sqh->prev->next = sqh->next;
		sqh->prev->qh_link = sqh->qh_link;

		FUNC1(sqh->prev->page_cache);

		if (sqh->next) {
			sqh->next->prev = sqh->prev;
			FUNC1(sqh->next->page_cache);
		}
		last = ((last == sqh) ? sqh->prev : last);

		sqh->prev = 0;

		FUNC1(sqh->page_cache);
	}
	return (last);
}