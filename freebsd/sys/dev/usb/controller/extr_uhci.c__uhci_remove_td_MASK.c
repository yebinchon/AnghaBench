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
struct TYPE_9__ {struct TYPE_9__* prev; TYPE_1__* next; int /*<<< orphan*/  page_cache; int /*<<< orphan*/  td_next; } ;
typedef  TYPE_2__ uhci_td_t ;
struct TYPE_8__ {int /*<<< orphan*/  page_cache; TYPE_2__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uhci_td_t *
FUNC2(uhci_td_t *std, uhci_td_t *last)
{
	FUNC0(11, "%p from %p\n", std, last);

	/* (sc->sc_bus.mtx) must be locked */

	std->prev->next = std->next;
	std->prev->td_next = std->td_next;

	FUNC1(std->prev->page_cache);

	if (std->next) {
		std->next->prev = std->prev;
		FUNC1(std->next->page_cache);
	}
	return ((last == std) ? std->prev : last);
}