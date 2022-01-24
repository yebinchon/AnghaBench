#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cmd; } ;
struct TYPE_6__ {int flags; TYPE_1__ sn; int /*<<< orphan*/  io_mtx; } ;
typedef  TYPE_2__ isc_session_t ;

/* Variables and functions */
 int ISC_OWAITING ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

void
FUNC5(isc_session_t *sp)
{
     int lastcmd;

     FUNC3(2, "restart ...");
     lastcmd = FUNC0(sp);
#if 0
     if(lastcmd != sp->sn.cmd) {
	  sdebug(1, "resetting CmdSN to=%d (from %d)", lastcmd, sp->sn.cmd);
	  sp->sn.cmd = lastcmd;
     }
#endif
     FUNC1(&sp->io_mtx);
     if(sp->flags & ISC_OWAITING) {
	  FUNC4(&sp->flags);
     }
     FUNC2(&sp->io_mtx);

     FUNC3(2, "restarted sn.cmd=0x%x lastcmd=0x%x", sp->sn.cmd, lastcmd);
}