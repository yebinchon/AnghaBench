#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ mode; int /*<<< orphan*/  acqsig; } ;
struct TYPE_7__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  proc; TYPE_2__ smode; int /*<<< orphan*/  status; TYPE_1__* sc; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_5__ {scalar_t__ unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWITCH_WAIT_ACQ ; 
 int TRUE ; 
 scalar_t__ VT_PROCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sc_console_unit ; 
 int /*<<< orphan*/  sc_consptr ; 

__attribute__((used)) static int
FUNC5(scr_stat *scp)
{
    if (scp->smode.mode != VT_PROCESS)
	return FALSE;
    if (scp->sc->unit == sc_console_unit)
	FUNC3(sc_consptr,  FALSE);
    scp->status |= SWITCH_WAIT_ACQ;
    FUNC1(scp->proc);
    FUNC4(scp->proc, scp->smode.acqsig);
    FUNC2(scp->proc);
    FUNC0(5, ("sending acqsig to %d\n", scp->pid));
    return TRUE;
}