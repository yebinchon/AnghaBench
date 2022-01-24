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
struct TYPE_9__ {struct TYPE_9__* prev; TYPE_1__* next; int /*<<< orphan*/  page_cache; int /*<<< orphan*/  sitd_next; } ;
typedef  TYPE_2__ ehci_sitd_t ;
struct TYPE_8__ {int /*<<< orphan*/  page_cache; TYPE_2__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ehci_sitd_t *
FUNC2(ehci_sitd_t *std, ehci_sitd_t *last)
{
	FUNC0(11, "%p from %p\n", std, last);

	/* (sc->sc_bus.mtx) must be locked */

	std->prev->next = std->next;
	std->prev->sitd_next = std->sitd_next;

	FUNC1(std->prev->page_cache);

	if (std->next) {
		std->next->prev = std->prev;
		FUNC1(std->next->page_cache);
	}
	return ((last == std) ? std->prev : last);
}