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
struct TYPE_3__ {size_t cidx; size_t entry_count; int /*<<< orphan*/  cbuf_psem; int /*<<< orphan*/  cbuf_clock; void** array; int /*<<< orphan*/  cbuf_csem; } ;
typedef  TYPE_1__ ocs_cbuf_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

void*
FUNC6(ocs_cbuf_t *cbuf, int32_t timeout_usec)
{
	void *ret = NULL;

	if (FUNC0(FUNC2(&cbuf->cbuf_csem, timeout_usec) == 0)) {
		FUNC1(&cbuf->cbuf_clock);
			ret = cbuf->array[cbuf->cidx];
			if (FUNC5(++cbuf->cidx >= cbuf->entry_count)) {
				cbuf->cidx = 0;
			}
		FUNC4(&cbuf->cbuf_clock);
		FUNC3(&cbuf->cbuf_psem);
	}
	return ret;
}