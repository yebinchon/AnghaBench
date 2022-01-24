#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct proc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; TYPE_1__ smode; struct proc* proc; } ;
typedef  TYPE_2__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int TRUE ; 
 int /*<<< orphan*/  VT_AUTO ; 
 struct proc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(scr_stat *scp)
{
    struct proc *p;

    if (scp->proc) {
	if ((p = FUNC2(scp->pid)) != NULL)
	    FUNC1(p);
	if (scp->proc == p)
	    return TRUE;
	scp->proc = NULL;
	scp->smode.mode = VT_AUTO;
	FUNC0(5, ("vt controlling process %d died\n", scp->pid));
    }
    return FALSE;
}