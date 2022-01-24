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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ node; int irqs; int ipis; scalar_t__ base; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAX_PICS ; 
 int /*<<< orphan*/  intr_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ nirqs ; 
 int npics ; 
 TYPE_1__* piclist ; 

u_int
FUNC3(uint32_t node, u_int pin)
{
	int idx;

	if (node == 0)
		return (pin);

	FUNC1(&intr_table_lock);
	for (idx = 0; idx < npics; idx++) {
		if (piclist[idx].node == node) {
			FUNC2(&intr_table_lock);
			return (piclist[idx].base + pin);
		}
	}

	/*
	 * XXX we should never encounter an unregistered PIC, but that
	 * can only be done when we properly support bus enumeration
	 * using multiple passes. Until then, fake an entry and give it
	 * some adhoc maximum number of IRQs and IPIs.
	 */
	piclist[idx].dev = NULL;
	piclist[idx].node = node;
	piclist[idx].irqs = 124;
	piclist[idx].ipis = 4;
	piclist[idx].base = nirqs;
	nirqs += (1 << 25);
	npics++;

	FUNC0(npics < MAX_PICS,
	    ("Number of PICs exceeds maximum (%d)", MAX_PICS));

	FUNC2(&intr_table_lock);

	return (piclist[idx].base + pin);
}