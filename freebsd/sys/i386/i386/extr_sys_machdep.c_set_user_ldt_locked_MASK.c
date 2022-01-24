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
struct proc_ldt {int /*<<< orphan*/  ldt_sd; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct TYPE_2__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int GUSERLDT_SEL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int NGDT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  currentldt ; 
 int /*<<< orphan*/  dt_lock ; 
 TYPE_1__* gdt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mdproc *mdp)
{
	struct proc_ldt *pldt;
	int gdt_idx;

	FUNC4(&dt_lock, MA_OWNED);

	pldt = mdp->md_ldt;
	gdt_idx = GUSERLDT_SEL;
	gdt_idx += FUNC1(cpuid) * NGDT;	/* always 0 on UP */
	gdt[gdt_idx].sd = pldt->ldt_sd;
	FUNC3(FUNC0(GUSERLDT_SEL, SEL_KPL));
	FUNC2(currentldt, FUNC0(GUSERLDT_SEL, SEL_KPL));
}