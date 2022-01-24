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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_4__ {size_t cur_textbuf_idx; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cur_textbuf; int /*<<< orphan*/ * textbufs; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_1__ ocs_ramlog_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (TYPE_1__*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int32_t
FUNC6(ocs_ramlog_t *ramlog, const char *fmt, va_list ap)
{
	if (ramlog == NULL || !ramlog->initialized) {
		return -1;
	}

	/* check the current text buffer, if it is almost full (less than 120 characaters), then
	 * roll to the next one.
	 */
	FUNC0(&ramlog->lock);
	if (FUNC2(ramlog->cur_textbuf) < 120) {
		ramlog->cur_textbuf_idx = FUNC1(ramlog, ramlog->cur_textbuf_idx);
		ramlog->cur_textbuf = &ramlog->textbufs[ramlog->cur_textbuf_idx];
		FUNC3(ramlog->cur_textbuf);
	}

	FUNC4(ramlog->cur_textbuf, fmt, ap);
	FUNC5(&ramlog->lock);

	return 0;
}