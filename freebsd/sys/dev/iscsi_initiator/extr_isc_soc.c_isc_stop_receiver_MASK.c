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
struct TYPE_3__ {int flags; int /*<<< orphan*/ * fp; int /*<<< orphan*/ * soc; int /*<<< orphan*/  td; int /*<<< orphan*/  io_mtx; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 int ISC_CON_RUN ; 
 int ISC_CON_RUNNING ; 
 int ISC_LINK_UP ; 
 int PDROP ; 
 int PRIBIO ; 
 int /*<<< orphan*/  SHUT_RD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC7(isc_session_t *sp)
{
     int	n;

     FUNC0(8);
     FUNC5(3, "sp=%p sp->soc=%p", sp, sp? sp->soc: 0);
     FUNC3(&sp->io_mtx);
     sp->flags &= ~ISC_LINK_UP;
     FUNC2(&sp->soc, &sp->io_mtx, PRIBIO|PDROP, "isc_stpc", 5*hz);

     FUNC6(sp->soc, SHUT_RD);

     FUNC3(&sp->io_mtx);
     FUNC5(3, "soshutdown");
     sp->flags &= ~ISC_CON_RUN;
     n = 2;
     while(n-- && (sp->flags & ISC_CON_RUNNING)) {
	  FUNC5(3, "waiting n=%d... flags=%x", n, sp->flags);
	  FUNC2(&sp->soc, &sp->io_mtx, PRIBIO, "isc_stpc", 5*hz);
     }
     FUNC4(&sp->io_mtx);

     if(sp->fp != NULL)
	  FUNC1(sp->fp, sp->td);
     sp->soc = NULL;
     sp->fp = NULL;

     FUNC5(3, "done");
}