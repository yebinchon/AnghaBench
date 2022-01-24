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
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SUBPROC ; 
 int /*<<< orphan*/  FUNC0 (struct sigacts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct sigacts *ps)
{

	if (FUNC2(&ps->ps_refcnt) == 0)
		return;
	FUNC1(&ps->ps_mtx);
	FUNC0(ps, M_SUBPROC);
}