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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ entry_count; scalar_t__ array_count; int /*<<< orphan*/  lock; void** array; } ;
typedef  TYPE_1__ ocs_varray_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int32_t
FUNC2(ocs_varray_t *va, void *entry)
{
	uint32_t rc = -1;

	FUNC0(&va->lock);
		if (va->entry_count < va->array_count) {
			va->array[va->entry_count++] = entry;
			rc = 0;
		}
	FUNC1(&va->lock);

	return rc;
}