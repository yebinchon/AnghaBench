#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_5__ {size_t textbuf_count; struct TYPE_5__* textbufs; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ocs_ramlog_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC3(ocs_t *ocs, ocs_ramlog_t *ramlog)
{
	uint32_t i;

	if (ramlog != NULL) {
		FUNC1(&ramlog->lock);
		if (ramlog->textbufs) {
			for (i = 0; i < ramlog->textbuf_count; i ++) {
				FUNC2(ocs, &ramlog->textbufs[i]);
			}

			FUNC0(ocs, ramlog->textbufs, ramlog->textbuf_count*sizeof(*ramlog->textbufs));
			ramlog->textbufs = NULL;
		}
		FUNC0(ocs, ramlog, sizeof(*ramlog));
	}
}