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
struct TYPE_2__ {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
struct itimer {int /*<<< orphan*/  it_callout; TYPE_1__ it_time; int /*<<< orphan*/  it_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct itimer*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct itimer *it)
{
	FUNC3(&it->it_mtx, MA_OWNED);
	
	/*
	 * clear timer's value and interval to tell realtimer_expire
	 * to not rearm the timer.
	 */
	FUNC4(&it->it_time.it_value);
	FUNC4(&it->it_time.it_interval);
	FUNC1(it);
	FUNC2(&it->it_callout);
	FUNC0(it);
	return (0);
}