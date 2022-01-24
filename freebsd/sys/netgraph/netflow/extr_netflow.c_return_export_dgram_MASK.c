#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  priv_p ;
typedef  int /*<<< orphan*/ * item_p ;
typedef  TYPE_2__* fib_export_p ;
struct TYPE_5__ {int /*<<< orphan*/ * item; } ;
struct TYPE_6__ {int /*<<< orphan*/  export_mtx; TYPE_1__ exp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(priv_p priv, fib_export_p fe, item_p item, int flags)
{

	/*
	 * It may happen on SMP, that some thread has already
	 * put its item there, in this case we bail out and
	 * send what we have to collector.
	 */
	FUNC1(&fe->export_mtx);
	if (fe->exp.item == NULL) {
		fe->exp.item = item;
		FUNC2(&fe->export_mtx);
	} else {
		FUNC2(&fe->export_mtx);
		FUNC0(priv, fe, item, flags);
	}
}