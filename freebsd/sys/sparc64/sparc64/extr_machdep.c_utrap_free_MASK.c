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
struct md_utrap {int ut_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SUBPROC ; 
 int /*<<< orphan*/  FUNC0 (struct md_utrap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct md_utrap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct md_utrap*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 

void
FUNC3(struct md_utrap *ut)
{
	int refcnt;

	if (ut == NULL)
		return;
	FUNC1(mtxpool_sleep, ut);
	ut->ut_refcnt--;
	refcnt = ut->ut_refcnt;
	FUNC2(mtxpool_sleep, ut);
	if (refcnt == 0)
		FUNC0(ut, M_SUBPROC);
}