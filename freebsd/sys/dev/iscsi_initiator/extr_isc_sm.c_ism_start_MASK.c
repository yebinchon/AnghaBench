#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  stp; int /*<<< orphan*/  flags; int /*<<< orphan*/  io_mtx; int /*<<< orphan*/  hld_mtx; int /*<<< orphan*/  snd_mtx; int /*<<< orphan*/  rsp_mtx; int /*<<< orphan*/  rsv_mtx; int /*<<< orphan*/  hld; int /*<<< orphan*/  wsnd; int /*<<< orphan*/  isnd; int /*<<< orphan*/  csnd; int /*<<< orphan*/  rsv; int /*<<< orphan*/  rsp; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_SM_RUN ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ism_out ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7(isc_session_t *sp)
{
     FUNC2(8);
    /*
     | now is a good time to do some initialization
     */
     FUNC0(&sp->rsp);
     FUNC0(&sp->rsv);
     FUNC0(&sp->csnd);
     FUNC0(&sp->isnd);
     FUNC0(&sp->wsnd);
     FUNC0(&sp->hld);

     FUNC6(&sp->rsv_mtx, "iscsi-rsv", NULL, MTX_DEF);
     FUNC6(&sp->rsp_mtx, "iscsi-rsp", NULL, MTX_DEF);
     FUNC6(&sp->snd_mtx, "iscsi-snd", NULL, MTX_DEF);
     FUNC6(&sp->hld_mtx, "iscsi-hld", NULL, MTX_DEF);
     FUNC6(&sp->io_mtx, "iscsi-io", NULL, MTX_DEF);

     FUNC3(sp);

     sp->flags |= ISC_SM_RUN;

     FUNC1(4, "starting ism_proc: sp->sid=%d", sp->sid);

#if __FreeBSD_version >= 800000
     return kproc_create(ism_out, sp, &sp->stp, 0, 0, "isc_out %d", sp->sid);
#else
     return FUNC5(ism_out, sp, &sp->stp, 0, 0, "isc_out %d", sp->sid);
#endif
}