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
typedef  union descriptor {int dummy; } descriptor ;
struct proc_ldt {int ldt_len; int ldt_refcnt; scalar_t__ ldt_base; int /*<<< orphan*/  ldt_sd; scalar_t__ ldt_active; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct TYPE_3__ {unsigned int ssd_base; int ssd_limit; } ;

/* Variables and functions */
 size_t GUSERLDT_SEL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_SUBPROC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (int) ; 
 int NLDT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  dt_lock ; 
 TYPE_1__* gdt_segs ; 
 scalar_t__ ldt ; 
 struct proc_ldt* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

struct proc_ldt *
FUNC8(struct mdproc *mdp, int len)
{
	struct proc_ldt *pldt, *new_ldt;

	FUNC3(&dt_lock, MA_OWNED);
	FUNC5(&dt_lock);
	new_ldt = FUNC2(sizeof(struct proc_ldt), M_SUBPROC, M_WAITOK);

	new_ldt->ldt_len = len = FUNC0(len);
	new_ldt->ldt_base = FUNC6(len * sizeof(union descriptor),
	    M_WAITOK | M_ZERO);
	new_ldt->ldt_refcnt = 1;
	new_ldt->ldt_active = 0;

	FUNC4(&dt_lock);
	gdt_segs[GUSERLDT_SEL].ssd_base = (unsigned)new_ldt->ldt_base;
	gdt_segs[GUSERLDT_SEL].ssd_limit = len * sizeof(union descriptor) - 1;
	FUNC7(&gdt_segs[GUSERLDT_SEL], &new_ldt->ldt_sd);

	if ((pldt = mdp->md_ldt) != NULL) {
		if (len > pldt->ldt_len)
			len = pldt->ldt_len;
		FUNC1(pldt->ldt_base, new_ldt->ldt_base,
		    len * sizeof(union descriptor));
	} else
		FUNC1(ldt, new_ldt->ldt_base, sizeof(union descriptor) * NLDT);
	
	return (new_ldt);
}