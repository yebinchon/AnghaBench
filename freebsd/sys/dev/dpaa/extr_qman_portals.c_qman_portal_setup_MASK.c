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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {unsigned int swPortalId; uintptr_t irq; struct qman_softc* h_App; int /*<<< orphan*/  f_RejectedFrame; int /*<<< orphan*/  f_DfltFrame; scalar_t__ fdLiodnOffset; int /*<<< orphan*/  h_Qm; void* ciBaseAddress; void* ceBaseAddress; } ;
typedef  TYPE_2__ t_QmPortalParam ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct qman_softc {int /*<<< orphan*/  sc_qh; } ;
struct dpaa_portals_softc {TYPE_1__* sc_dp; int /*<<< orphan*/ * sc_rres; } ;
struct TYPE_4__ {int /*<<< orphan*/  dp_ph; scalar_t__ dp_ires; } ;

/* Variables and functions */
 scalar_t__ E_OK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QMAN_COMMON_POOL_CHANNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SW_VOL ; 
 scalar_t__ FUNC5 (uintptr_t*,int /*<<< orphan*/ ,int) ; 
 uintptr_t FUNC6 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (uintptr_t*,uintptr_t) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC9 (struct dpaa_portals_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qman_received_frame_callback ; 
 int /*<<< orphan*/  qman_rejected_frame_callback ; 
 struct dpaa_portals_softc* qp_sc ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

t_Handle
FUNC16(struct qman_softc *qsc)
{
	struct dpaa_portals_softc *sc;
	t_QmPortalParam qpp;
	unsigned int cpu;
	uintptr_t p;
	t_Handle portal;

	/* Return NULL if we're not ready or while detach */
	if (qp_sc == NULL)
		return (NULL);

	sc = qp_sc;

	FUNC12();
	portal = NULL;
	cpu = FUNC0(cpuid);

	/* Check if portal is ready */
	while (FUNC5((uintptr_t *)&sc->sc_dp[cpu].dp_ph,
	    0, -1) == 0) {
		p = FUNC6((uintptr_t *)&sc->sc_dp[cpu].dp_ph);

		/* Return if portal is already initialized */
		if (p != 0 && p != -1) {
			FUNC13();
			return ((t_Handle)p);
		}

		/* Not inititialized and "owned" by another thread */
		FUNC14(curthread);
		FUNC10(SW_VOL, NULL);
		FUNC15(curthread);
	}

	/* Map portal registers */
	FUNC9(sc);

	/* Configure and initialize portal */
	qpp.ceBaseAddress = FUNC11(sc->sc_rres[0]);
	qpp.ciBaseAddress = FUNC11(sc->sc_rres[1]);
	qpp.h_Qm = qsc->sc_qh;
	qpp.swPortalId = cpu;
	qpp.irq = (uintptr_t)sc->sc_dp[cpu].dp_ires;
	qpp.fdLiodnOffset = 0;
	qpp.f_DfltFrame = qman_received_frame_callback;
	qpp.f_RejectedFrame = qman_rejected_frame_callback;
	qpp.h_App = qsc;

	portal = FUNC2(&qpp);
	if (portal == NULL)
		goto err;

	if (FUNC4(portal) != E_OK)
		goto err;

	if (FUNC1(portal, QMAN_COMMON_POOL_CHANNEL) != E_OK)
		goto err;

	FUNC8((uintptr_t *)&sc->sc_dp[cpu].dp_ph,
	    (uintptr_t)portal);
	FUNC13();

	return (portal);

err:
	if (portal != NULL)
		FUNC3(portal);

	FUNC7((uint32_t *)&sc->sc_dp[cpu].dp_ph, 0);
	FUNC13();

	return (NULL);
}