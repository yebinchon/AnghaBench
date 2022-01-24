#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct async_completion {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_FIRSTFIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OPAL_ASYNC_COMP ; 
 int /*<<< orphan*/ * async_token_pool ; 
 int /*<<< orphan*/  completions ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opal_handle_async_completion ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 

int
FUNC3(int count)
{
	/* Only allow one initialization */
	if (async_token_pool != NULL)
		return (EINVAL);

	async_token_pool = FUNC2("OPAL Async", 0, count, 1, 1,
	    M_WAITOK | M_FIRSTFIT);
	completions = FUNC1(count * sizeof(struct async_completion),
	    M_DEVBUF, M_WAITOK | M_ZERO);

	FUNC0(OPAL_ASYNC_COMP, opal_handle_async_completion,
	    NULL, EVENTHANDLER_PRI_ANY);

	return (0);
}