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
typedef  TYPE_1__* hcb_p ;
struct TYPE_4__ {int /*<<< orphan*/  busy_ccbq; int /*<<< orphan*/  comp_ccbq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (hcb_p np, int cam_status)
{
	/*
	 *  Move all active CCBs to the COMP queue
	 *  and flush this queue.
	 */
	FUNC2(&np->busy_ccbq, &np->comp_ccbq);
	FUNC1(&np->busy_ccbq);
	FUNC0(np, cam_status);
}