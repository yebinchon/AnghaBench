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
struct turnstile {int /*<<< orphan*/  ts_lock; int /*<<< orphan*/  ts_free; int /*<<< orphan*/  ts_pending; int /*<<< orphan*/ * ts_blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MTX_RECURSE ; 
 int MTX_SPIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t TS_EXCLUSIVE_QUEUE ; 
 size_t TS_SHARED_QUEUE ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(void *mem, int size, int flags)
{
	struct turnstile *ts;

	FUNC2(mem, size);
	ts = mem;
	FUNC1(&ts->ts_blocked[TS_EXCLUSIVE_QUEUE]);
	FUNC1(&ts->ts_blocked[TS_SHARED_QUEUE]);
	FUNC1(&ts->ts_pending);
	FUNC0(&ts->ts_free);
	FUNC3(&ts->ts_lock, "turnstile lock", NULL, MTX_SPIN | MTX_RECURSE);
	return (0);
}