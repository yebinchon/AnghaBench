#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  msg; scalar_t__ completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OPAL_BUSY ; 
 int /*<<< orphan*/  OPAL_CHECK_ASYNC_COMPLETION ; 
 int OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* completions ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int
FUNC5(void *buf, uint64_t size, int token)
{
	int err;

	do {
		err = FUNC3(OPAL_CHECK_ASYNC_COMPLETION,
		    FUNC4(buf), size, token);
		if (err == OPAL_BUSY) {
			if (completions[token].completed) {
				FUNC1();
				FUNC2(buf, &completions[token].msg, size);
				return (OPAL_SUCCESS);
			}
		}
		FUNC0(100);
	} while (err == OPAL_BUSY);

	return (err);
}