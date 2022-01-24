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
struct TYPE_6__ {int /*<<< orphan*/  targetAddress; int /*<<< orphan*/  targetName; } ;
struct TYPE_7__ {int /*<<< orphan*/  douio; int /*<<< orphan*/  oid; int /*<<< orphan*/  clist; TYPE_2__ opt; int /*<<< orphan*/  dev; TYPE_1__* isc; int /*<<< orphan*/  sid; } ;
typedef  TYPE_3__ isc_session_t ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_dump_stats ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_handle_string ; 

__attribute__((used)) static void
FUNC8(isc_session_t *sp)
{
     FUNC4(8);
     FUNC6(6, "sid=%d %s", sp->sid, FUNC5(sp->dev));

     FUNC7(&sp->clist);
     sp->oid = FUNC1(&sp->clist,
			       FUNC3(sp->isc->oid),
			       OID_AUTO,
			       FUNC5(sp->dev) + 5, // iscsi0
			       CTLFLAG_RD,
			       0,
			       "initiator");
     FUNC2(&sp->clist,
		     FUNC3(sp->oid),
		     OID_AUTO,
		     "targetname",
		     CTLTYPE_STRING | CTLFLAG_RD,
		     (void *)&sp->opt.targetName, 0,
		     sysctl_handle_string, "A", "target name");

     FUNC2(&sp->clist,
		     FUNC3(sp->oid),
		     OID_AUTO,
		     "targeaddress",
		     CTLTYPE_STRING | CTLFLAG_RD,
		     (void *)&sp->opt.targetAddress, 0,
		     sysctl_handle_string, "A", "target address");

     FUNC2(&sp->clist,
		     FUNC3(sp->oid),
		     OID_AUTO,
		     "stats",
		     CTLTYPE_STRING | CTLFLAG_RD,
		     (void *)sp, 0,
		     isc_dump_stats, "A", "statistics");

     FUNC0(&sp->clist,
		     FUNC3(sp->oid),
		     OID_AUTO,
		     "douio",
		     CTLFLAG_RW,
		     &sp->douio, 0, "enable uio on read");
}