#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ts_runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 TYPE_1__* FUNC6 (struct thread*) ; 
 scalar_t__ tickincr ; 

void
FUNC7(struct thread *td, struct thread *child)
{
	FUNC0(td, MA_OWNED);
	FUNC4(FUNC6(td), 1);
	FUNC1(td, child);
	/*
	 * Penalize the parent and child for forking.
	 */
	FUNC2(child);
	FUNC5(child);
	FUNC6(td)->ts_runtime += tickincr;
	FUNC3(td);
	FUNC5(td);
}