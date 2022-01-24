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
struct mgb_softc {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; } ;

/* Variables and functions */
 int FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  MGB_INTR_ENBL_CLR ; 
 int /*<<< orphan*/  MGB_INTR_ENBL_SET ; 
 int /*<<< orphan*/  MGB_INTR_STS ; 
 int FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *xsc)
{
	struct mgb_softc *sc;
	if_softc_ctx_t scctx;
	uint32_t intr_sts, intr_en;
	int qidx;

	sc = xsc;
	scctx = FUNC3(sc->ctx);

	intr_sts = FUNC0(sc, MGB_INTR_STS);
	intr_en = FUNC0(sc, MGB_INTR_ENBL_SET);
	intr_sts &= intr_en;

	for (qidx = 0; qidx < scctx->isc_nrxqsets; qidx++) {
		if ((intr_sts & FUNC2(qidx))){
			FUNC1(sc, MGB_INTR_ENBL_CLR,
			    FUNC2(qidx));
			FUNC1(sc, MGB_INTR_STS, FUNC2(qidx));
		}
	}
	return (FILTER_SCHEDULE_THREAD);
}