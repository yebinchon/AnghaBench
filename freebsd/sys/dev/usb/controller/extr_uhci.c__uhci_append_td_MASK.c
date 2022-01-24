#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  page_cache; int /*<<< orphan*/  td_self; int /*<<< orphan*/  td_next; struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef  TYPE_1__ uhci_td_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uhci_td_t *
FUNC2(uhci_td_t *std, uhci_td_t *last)
{
	FUNC0(11, "%p to %p\n", std, last);

	/* (sc->sc_bus.mtx) must be locked */

	std->next = last->next;
	std->td_next = last->td_next;

	std->prev = last;

	FUNC1(std->page_cache);

	/*
	 * the last->next->prev is never followed: std->next->prev = std;
	 */
	last->next = std;
	last->td_next = std->td_self;

	FUNC1(last->page_cache);

	return (std);
}