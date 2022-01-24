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
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_4__ {scalar_t__ textbuf_base; int textbuf_count; int /*<<< orphan*/ * textbufs; } ;
typedef  TYPE_1__ ocs_ramlog_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int32_t
FUNC6(ocs_textbuf_t *textbuf, ocs_ramlog_t *ramlog)
{
	uint32_t i;
	ocs_textbuf_t *rltextbuf;
	int idx;

	if ((ramlog == NULL) || (ramlog->textbufs == NULL)) {
		return -1;
	}

	FUNC1(textbuf, "driver-log", 0);

	/* Dump the start of day buffer */
	FUNC1(textbuf, "startofday", 0);
	/* If textbuf_base is 0, then all buffers are used for recent */
	if (ramlog->textbuf_base) {
		rltextbuf = &ramlog->textbufs[0];
		FUNC3(textbuf, FUNC4(rltextbuf), FUNC5(rltextbuf));
	}
	FUNC0(textbuf, "startofday", 0);

	/* Dump the most recent buffers */
	FUNC1(textbuf, "recent", 0);

	/* start with the next textbuf */
	idx = FUNC2(ramlog, ramlog->textbuf_count);

	for (i = ramlog->textbuf_base; i < ramlog->textbuf_count; i ++) {
		rltextbuf = &ramlog->textbufs[idx];
		FUNC3(textbuf, FUNC4(rltextbuf), FUNC5(rltextbuf));
		idx = FUNC2(ramlog, idx);
	}
	FUNC0(textbuf, "recent", 0);
	FUNC0(textbuf, "driver-log", 0);

	return 0;
}