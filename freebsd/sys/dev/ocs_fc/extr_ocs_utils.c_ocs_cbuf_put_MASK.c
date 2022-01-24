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
struct TYPE_3__ {size_t pidx; size_t entry_count; int /*<<< orphan*/  cbuf_csem; int /*<<< orphan*/  cbuf_plock; void** array; int /*<<< orphan*/  cbuf_psem; } ;
typedef  TYPE_1__ ocs_cbuf_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int32_t
FUNC6(ocs_cbuf_t *cbuf, void *elem)
{
	int32_t rc = 0;

	if (FUNC0(FUNC2(&cbuf->cbuf_psem, -1) == 0)) {
		FUNC1(&cbuf->cbuf_plock);
			cbuf->array[cbuf->pidx] = elem;
			if (FUNC5(++cbuf->pidx >= cbuf->entry_count)) {
				cbuf->pidx = 0;
			}
		FUNC4(&cbuf->cbuf_plock);
		FUNC3(&cbuf->cbuf_csem);
	} else {
		rc = -1;
	}
	return rc;
}