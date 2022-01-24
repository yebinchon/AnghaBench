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
struct isc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  pduq_t ;
struct TYPE_5__ {TYPE_1__* si_drv1; } ;
struct TYPE_4__ {TYPE_2__* dev; int /*<<< orphan*/  nsess; int /*<<< orphan*/  oid; int /*<<< orphan*/  clist; int /*<<< orphan*/ * eh; int /*<<< orphan*/  unit_sx; int /*<<< orphan*/  unit; int /*<<< orphan*/  pdu_zone; int /*<<< orphan*/  isc_sess; int /*<<< orphan*/  isc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int EEXIST ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MAKEDEV_CHECKNAME ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_ISCSI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  _net ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* isc ; 
 int /*<<< orphan*/  iscsi_cdevsw ; 
 int /*<<< orphan*/  iscsi_dbg_mtx ; 
 char* iscsi_driver_version ; 
 int /*<<< orphan*/  iscsi_shutdown ; 
 char* isid ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  max_pdus ; 
 scalar_t__ max_sessions ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  sc ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int
FUNC18(void)
{
     FUNC7(8);

     isc =  FUNC9(sizeof(struct isc_softc), M_ISCSI, M_ZERO|M_WAITOK);
     FUNC10(&isc->isc_mtx, "iscsi-isc", NULL, MTX_DEF);

     FUNC6(&isc->isc_sess);
     /*
      | now init the free pdu list
      */
     isc->pdu_zone = FUNC15("pdu", sizeof(pduq_t),
				 NULL, NULL, NULL, NULL,
				 0, 0);
     FUNC16(isc->pdu_zone, max_pdus);
     isc->unit = FUNC11(0, max_sessions-1, NULL);
     FUNC13(&isc->unit_sx, "iscsi sx");

#ifdef DO_EVENTHANDLER
     if((isc->eh = EVENTHANDLER_REGISTER(shutdown_pre_sync, iscsi_shutdown,
					sc, SHUTDOWN_PRI_DEFAULT-1)) == NULL)
	  xdebug("shutdown event registration failed\n");
#endif
     /*
      | sysctl stuff
      */
     FUNC14(&isc->clist);
     isc->oid = FUNC2(&isc->clist,
			       FUNC5(_net),
			       OID_AUTO,
			       "iscsi_initiator",
			       CTLFLAG_RD,
			       0,
			       "iSCSI Subsystem");

     FUNC3(&isc->clist,
		       FUNC4(isc->oid),
		       OID_AUTO,
		       "driver_version",
		       CTLFLAG_RD,
		       iscsi_driver_version,
		       0,
		       "iscsi driver version");
 
     FUNC3(&isc->clist,
		       FUNC4(isc->oid),
		       OID_AUTO,
		       "isid",
		       CTLFLAG_RW,
		       isid,
		       6+1,
		       "initiator part of the Session Identifier");

     FUNC1(&isc->clist,
		    FUNC4(isc->oid),
		    OID_AUTO,
		    "sessions",
		    CTLFLAG_RD,
		    &isc->nsess,
		    sizeof(isc->nsess),
		    "number of active session");

#ifdef ISCSI_INITIATOR_DEBUG
     mtx_init(&iscsi_dbg_mtx, "iscsi_dbg", NULL, MTX_DEF);
#endif

     isc->dev = FUNC8(MAKEDEV_CHECKNAME, &iscsi_cdevsw, max_sessions,
			       NULL, UID_ROOT, GID_WHEEL, 0600, "iscsi");
     if (isc->dev == NULL) {
	  FUNC17("iscsi_initiator: make_dev_credf failed");
	  return (EEXIST);
     }
     isc->dev->si_drv1 = isc;

     FUNC12("iscsi: version %s\n", iscsi_driver_version);
     return (0);
}