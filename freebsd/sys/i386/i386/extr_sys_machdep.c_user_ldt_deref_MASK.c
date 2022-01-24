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
typedef  union descriptor {int dummy; } descriptor ;
struct proc_ldt {scalar_t__ ldt_refcnt; int ldt_len; int /*<<< orphan*/  ldt_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_SUBPROC ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC0 (struct proc_ldt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct proc_ldt *pldt)
{

	FUNC1(&dt_lock, MA_OWNED);
	if (--pldt->ldt_refcnt == 0) {
		FUNC2(&dt_lock);
		FUNC3(pldt->ldt_base, pldt->ldt_len *
		    sizeof(union descriptor));
		FUNC0(pldt, M_SUBPROC);
	} else
		FUNC2(&dt_lock);
}