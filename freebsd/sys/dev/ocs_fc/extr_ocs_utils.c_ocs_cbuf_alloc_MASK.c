#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ocs_os_handle_t ;
struct TYPE_6__ {int entry_count; int /*<<< orphan*/ * array; int /*<<< orphan*/  cbuf_psem; int /*<<< orphan*/  cbuf_csem; int /*<<< orphan*/  cbuf_plock; int /*<<< orphan*/  cbuf_clock; scalar_t__ cidx; scalar_t__ pidx; int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ ocs_cbuf_t ;

/* Variables and functions */
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*,TYPE_1__*) ; 

ocs_cbuf_t*
FUNC4(ocs_os_handle_t os, uint32_t entry_count)
{
	ocs_cbuf_t *cbuf;

	cbuf = FUNC2(os, sizeof(*cbuf), OCS_M_NOWAIT | OCS_M_ZERO);
	if (cbuf == NULL) {
		return NULL;
	}

	cbuf->os = os;
	cbuf->entry_count = entry_count;
	cbuf->pidx = 0;
	cbuf->cidx = 0;

	FUNC1(NULL, &cbuf->cbuf_clock, "cbuf_c:%p", cbuf);
	FUNC1(NULL, &cbuf->cbuf_plock, "cbuf_p:%p", cbuf);
	FUNC3(&cbuf->cbuf_csem, 0, "cbuf:%p", cbuf);
	FUNC3(&cbuf->cbuf_psem, cbuf->entry_count, "cbuf:%p", cbuf);

	cbuf->array = FUNC2(os, entry_count * sizeof(*cbuf->array), OCS_M_NOWAIT | OCS_M_ZERO);
	if (cbuf->array == NULL) {
		FUNC0(cbuf);
		return NULL;
	}

	return cbuf;
}