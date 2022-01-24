#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int slot; int bus; int /*<<< orphan*/  devfunc; } ;
typedef  TYPE_1__ pir_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void
FUNC3(int entry, pir_entry_t *p, char line, uint8_t link,
    uint16_t irqs)
{

	if (link == 0)
		return;

	FUNC2("%3d    ", entry);
	if (p->slot == 0)
		FUNC2("embedded ");
	else
		FUNC2("slot %-3d ", p->slot);

	FUNC2(" %3d  %3d    %c   0x%02x  ", p->bus, FUNC0(p->devfunc),
	    line, link);
	FUNC1(irqs);
	FUNC2("\n");
}