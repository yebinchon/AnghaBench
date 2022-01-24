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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  entry_count; } ;
typedef  TYPE_1__ ocs_cbuf_t ;
typedef  int /*<<< orphan*/  ocs_array_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int32_t
FUNC4(ocs_cbuf_t *cbuf, ocs_array_t *array)
{
	uint32_t i;
	uint32_t count = FUNC0(FUNC2(array), cbuf->entry_count);

	for (i = 0; i < count; i++) {
		FUNC3(cbuf, FUNC1(array, i));
	}
	return 0;
}