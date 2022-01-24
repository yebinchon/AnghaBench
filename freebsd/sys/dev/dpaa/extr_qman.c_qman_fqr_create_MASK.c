#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
struct TYPE_10__ {void* fqTailDropThreshold; scalar_t__ overheadAccountingLength; int /*<<< orphan*/ * h_QmCg; } ;
struct TYPE_8__ {void* align; } ;
struct TYPE_7__ {void* fqid; } ;
struct TYPE_9__ {TYPE_2__ nonFrcQs; TYPE_1__ frcQ; } ;
struct TYPE_11__ {int initParked; int holdActive; int preferInCache; int useForce; int congestionAvoidanceEnable; TYPE_4__ congestionAvoidanceParams; TYPE_3__ qs; void* numOfFqids; void* shadowMode; int /*<<< orphan*/  wq; int /*<<< orphan*/  channel; scalar_t__ p_ContextB; scalar_t__ p_ContextA; void* useContextAForStash; int /*<<< orphan*/ * h_QmPortal; int /*<<< orphan*/  h_Qm; } ;
typedef  TYPE_5__ t_QmFqrParams ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct qman_softc {void** sc_fqr_cpu; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_qh; } ;
typedef  scalar_t__ int8_t ;
typedef  int /*<<< orphan*/  e_QmFQChannel ;

/* Variables and functions */
 void* FALSE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct qman_softc*) ; 
 struct qman_softc* qman_sc ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

t_Handle
FUNC7(uint32_t fqids_num, e_QmFQChannel channel, uint8_t wq,
    bool force_fqid, uint32_t fqid_or_align, bool init_parked,
    bool hold_active, bool prefer_in_cache, bool congst_avoid_ena,
    t_Handle congst_group, int8_t overhead_accounting_len,
    uint32_t tail_drop_threshold)
{
	struct qman_softc *sc;
	t_QmFqrParams fqr;
	unsigned int cpu;
	t_Handle fqrh, portal;

	sc = qman_sc;

	FUNC5();
	cpu = FUNC0(cpuid);

	/* Ensure we have got QMan port initialized */
	portal = FUNC4(sc);
	if (portal == NULL) {
		FUNC3(sc->sc_dev, "could not setup QMan portal\n");
		goto err;
	}

	fqr.h_Qm = sc->sc_qh;
	fqr.h_QmPortal = portal;
	fqr.initParked = init_parked;
	fqr.holdActive = hold_active;
	fqr.preferInCache = prefer_in_cache;

	/* We do not support stashing */
	fqr.useContextAForStash = FALSE;
	fqr.p_ContextA = 0;
	fqr.p_ContextB = 0;

	fqr.channel = channel;
	fqr.wq = wq;
	fqr.shadowMode = FALSE;
	fqr.numOfFqids = fqids_num;

	/* FQID */
	fqr.useForce = force_fqid;
	if (force_fqid) {
		fqr.qs.frcQ.fqid = fqid_or_align;
	} else {
		fqr.qs.nonFrcQs.align = fqid_or_align;
	}

	/* Congestion Avoidance */
	fqr.congestionAvoidanceEnable = congst_avoid_ena;
	if (congst_avoid_ena) {
		fqr.congestionAvoidanceParams.h_QmCg = congst_group;
		fqr.congestionAvoidanceParams.overheadAccountingLength =
		    overhead_accounting_len;
		fqr.congestionAvoidanceParams.fqTailDropThreshold =
		    tail_drop_threshold;
	} else {
		fqr.congestionAvoidanceParams.h_QmCg = 0;
		fqr.congestionAvoidanceParams.overheadAccountingLength = 0;
		fqr.congestionAvoidanceParams.fqTailDropThreshold = 0;
	}

	fqrh = FUNC1(&fqr);
	if (fqrh == NULL) {
		FUNC3(sc->sc_dev, "could not create Frame Queue Range"
		    "\n");
		goto err;
	}

	sc->sc_fqr_cpu[FUNC2(fqrh)] = FUNC0(cpuid);

	FUNC6();

	return (fqrh);

err:
	FUNC6();

	return (NULL);
}