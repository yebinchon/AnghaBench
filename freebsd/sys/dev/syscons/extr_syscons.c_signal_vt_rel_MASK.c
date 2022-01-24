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
struct TYPE_4__ {scalar_t__ mode; int /*<<< orphan*/  relsig; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  proc; TYPE_1__ smode; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWITCH_WAIT_REL ; 
 int TRUE ; 
 scalar_t__ VT_PROCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(scr_stat *scp)
{
    if (scp->smode.mode != VT_PROCESS)
	return FALSE;
    scp->status |= SWITCH_WAIT_REL;
    FUNC1(scp->proc);
    FUNC3(scp->proc, scp->smode.relsig);
    FUNC2(scp->proc);
    FUNC0(5, ("sending relsig to %d\n", scp->pid));
    return TRUE;
}