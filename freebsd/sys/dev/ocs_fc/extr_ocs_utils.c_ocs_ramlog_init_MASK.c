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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_4__ {int textbuf_count; int textbuf_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  initialized; int /*<<< orphan*/ * textbufs; int /*<<< orphan*/ * cur_textbuf; scalar_t__ cur_textbuf_idx; } ;
typedef  TYPE_1__ ocs_ramlog_t ;

/* Variables and functions */
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

ocs_ramlog_t *
FUNC6(ocs_t *ocs, uint32_t buffer_len, uint32_t buffer_count)
{
	uint32_t i;
	uint32_t rc;
	ocs_ramlog_t *ramlog;

	ramlog = FUNC3(ocs, sizeof(*ramlog), OCS_M_ZERO | OCS_M_NOWAIT);
	if (ramlog == NULL) {
		FUNC2(ocs, "ocs_malloc ramlog failed\n");
		return NULL;
	}

	ramlog->textbuf_count = buffer_count;

	ramlog->textbufs = FUNC3(ocs, sizeof(*ramlog->textbufs)*buffer_count, OCS_M_ZERO | OCS_M_NOWAIT);
	if (ramlog->textbufs == NULL) {
		FUNC2(ocs, "ocs_malloc textbufs failed\n");
		FUNC4(ocs, ramlog);
		return NULL;
	}

	for (i = 0; i < buffer_count; i ++) {
		rc = FUNC5(ocs, &ramlog->textbufs[i], buffer_len);
		if (rc) {
			FUNC2(ocs, "ocs_textbuf_alloc failed\n");
			FUNC4(ocs, ramlog);
			return NULL;
		}
	}

	ramlog->cur_textbuf_idx = 0;
	ramlog->textbuf_base = 1;
	ramlog->cur_textbuf = &ramlog->textbufs[0];
	ramlog->initialized = TRUE;
	FUNC1(ocs, &ramlog->lock, "ramlog_lock[%d]", FUNC0(ocs));
	return ramlog;
}