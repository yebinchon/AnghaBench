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
typedef  int uint32_t ;
struct mgb_softc {int isr_test_flag; int /*<<< orphan*/  ctx; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; int isc_ntxqsets; } ;

/* Variables and functions */
 int FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  MGB_INTR_ENBL_CLR ; 
 int /*<<< orphan*/  MGB_INTR_ENBL_SET ; 
 int /*<<< orphan*/  MGB_INTR_STS ; 
 int MGB_INTR_STS_ANY ; 
 int FUNC2 (int) ; 
 int MGB_INTR_STS_RX_ANY ; 
 int MGB_INTR_STS_TEST ; 
 int FUNC3 (int) ; 
 int MGB_INTR_STS_TX_ANY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(void *xsc)
{
	struct mgb_softc *sc;
	if_softc_ctx_t scctx;
	uint32_t intr_sts, intr_en;
	int qidx;

	sc = xsc;
	scctx = FUNC5(sc->ctx);

	intr_sts = FUNC0(sc, MGB_INTR_STS);
	intr_en = FUNC0(sc, MGB_INTR_ENBL_SET);
	intr_sts &= intr_en;

	/*
	 * NOTE: Debugging printfs here
	 * will likely cause interrupt test failure.
	 */

	/* TODO: shouldn't continue if suspended */
	if ((intr_sts & MGB_INTR_STS_ANY) == 0)
	{
		FUNC4(sc->dev, "non-mgb interrupt triggered.\n");
		return (FILTER_SCHEDULE_THREAD);
	}
	if ((intr_sts &  MGB_INTR_STS_TEST) != 0)
	{
		sc->isr_test_flag = true;
		FUNC1(sc, MGB_INTR_STS, MGB_INTR_STS_TEST);
		return (FILTER_HANDLED);
	}
	if ((intr_sts & MGB_INTR_STS_RX_ANY) != 0)
	{
		for (qidx = 0; qidx < scctx->isc_nrxqsets; qidx++) {
			if ((intr_sts & FUNC2(qidx))){
				FUNC6(sc->ctx, qidx);
			}
		}
		return (FILTER_HANDLED);
	}
	/* XXX: TX interrupts should not occur */
	if ((intr_sts & MGB_INTR_STS_TX_ANY) != 0)
	{
		for (qidx = 0; qidx < scctx->isc_ntxqsets; qidx++) {
			if ((intr_sts & FUNC2(qidx))) {
				/* clear the interrupt sts and run handler */
				FUNC1(sc, MGB_INTR_ENBL_CLR,
				    FUNC3(qidx));
				FUNC1(sc, MGB_INTR_STS,
				    FUNC3(qidx));
				FUNC7(sc->ctx, qidx);
			}
		}
		return (FILTER_HANDLED);
	}

	return (FILTER_SCHEDULE_THREAD);
}