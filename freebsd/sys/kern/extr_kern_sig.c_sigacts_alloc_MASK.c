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
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_SUBPROC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct sigacts* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

struct sigacts *
FUNC3(void)
{
	struct sigacts *ps;

	ps = FUNC0(sizeof(struct sigacts), M_SUBPROC, M_WAITOK | M_ZERO);
	FUNC2(&ps->ps_refcnt, 1);
	FUNC1(&ps->ps_mtx, "sigacts", NULL, MTX_DEF);
	return (ps);
}