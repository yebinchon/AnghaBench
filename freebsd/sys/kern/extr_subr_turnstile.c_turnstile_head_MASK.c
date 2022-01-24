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
struct turnstile {int /*<<< orphan*/ * ts_blocked; int /*<<< orphan*/  ts_lock; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct thread* FUNC1 (int /*<<< orphan*/ *) ; 
 int TS_EXCLUSIVE_QUEUE ; 
 int TS_SHARED_QUEUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct thread *
FUNC3(struct turnstile *ts, int queue)
{
#ifdef INVARIANTS

	MPASS(ts != NULL);
	MPASS(queue == TS_SHARED_QUEUE || queue == TS_EXCLUSIVE_QUEUE);
	mtx_assert(&ts->ts_lock, MA_OWNED);
#endif
	return (FUNC1(&ts->ts_blocked[queue]));
}