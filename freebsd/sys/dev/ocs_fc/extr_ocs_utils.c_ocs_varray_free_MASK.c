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
struct TYPE_4__ {int array_count; int /*<<< orphan*/  os; struct TYPE_4__* array; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ocs_varray_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(ocs_varray_t *va)
{
	if (va != NULL) {
		FUNC1(&va->lock);
		if (va->array != NULL) {
			FUNC0(va->os, va->array, sizeof(*va->array) * va->array_count);
		}
		FUNC0(va->os, va, sizeof(*va));
	}
}