#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int alloc_count; int /*<<< orphan*/  os; struct TYPE_4__* entries; } ;
typedef  TYPE_1__ ocs_hw_qtop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void
FUNC1(ocs_hw_qtop_t *qtop)
{
	if (qtop != NULL) {
		if (qtop->entries != NULL) {
			FUNC0(qtop->os, qtop->entries, qtop->alloc_count*sizeof(*qtop->entries));
		}
		FUNC0(qtop->os, qtop, sizeof(*qtop));
	}
}