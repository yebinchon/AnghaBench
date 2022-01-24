#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct isc_softc {int /*<<< orphan*/  isc_mtx; int /*<<< orphan*/  nsess; int /*<<< orphan*/  isc_sess; int /*<<< orphan*/  unit_sx; int /*<<< orphan*/  unit; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  clist; int /*<<< orphan*/  opt; int /*<<< orphan*/  io_mtx; int /*<<< orphan*/  snd_mtx; int /*<<< orphan*/  hld_mtx; int /*<<< orphan*/  rsv_mtx; int /*<<< orphan*/  rsp_mtx; int /*<<< orphan*/  dev; int /*<<< orphan*/  sid; struct isc_softc* isc; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 int ISC_FFPHASE ; 
 int ISC_SM_RUN ; 
 int ISC_SM_RUNNING ; 
 int /*<<< orphan*/  M_ISCSI ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  sp_link ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

void
FUNC20(isc_session_t *sp)
{
     struct isc_softc *sc = sp->isc;
     int	n;

     FUNC1(8);
     FUNC13(2, "terminating");
     /*
      | first stop the receiver
      */
     FUNC8(sp);
     /*
      | now stop the xmitter
      */
     n = 5;
     sp->flags &= ~ISC_SM_RUN;
     while(n-- && (sp->flags & ISC_SM_RUNNING)) {
	  FUNC13(2, "n=%d", n);
	  FUNC18(&sp->flags);
	  FUNC17(sp, PRIBIO, "-", 5*hz);
     }
     FUNC13(2, "final n=%d", n);
     sp->flags &= ~ISC_FFPHASE;
     
     FUNC9(sp);

     (void)FUNC6(sp);

     FUNC7(sp);

     FUNC14(&sc->unit_sx);
     FUNC4(sc->unit, sp->sid);
     FUNC15(&sc->unit_sx);

     FUNC11(&sc->isc_mtx);
     FUNC0(&sc->isc_sess, sp, sp_link);
     sc->nsess--;
     FUNC12(&sc->isc_mtx);

#if __FreeBSD_version < 700000
     FUNC2(sp->dev);
#endif

     FUNC10(&sp->rsp_mtx);
     FUNC10(&sp->rsv_mtx);
     FUNC10(&sp->hld_mtx);
     FUNC10(&sp->snd_mtx);
     FUNC10(&sp->io_mtx);

     FUNC5(&sp->opt);

     if(FUNC16(&sp->clist))
	  FUNC19("sysctl_ctx_free failed");

     FUNC3(sp, M_ISCSI);
}