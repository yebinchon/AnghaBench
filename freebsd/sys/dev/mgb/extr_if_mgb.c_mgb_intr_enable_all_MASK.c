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
struct mgb_softc {int dummy; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MGB_DMAC_INTR_ENBL_SET ; 
 int /*<<< orphan*/  MGB_DMAC_INTR_STS ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MGB_INTR_ENBL_SET ; 
 int FUNC2 (int) ; 
 int MGB_INTR_STS_ANY ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  MGB_INTR_VEC_ENBL_SET ; 
 struct mgb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(if_ctx_t ctx)
{
	struct mgb_softc *sc;
	if_softc_ctx_t scctx;
	int i, dmac_enable = 0, intr_sts = 0, vec_en = 0;

	sc = FUNC4(ctx);
	scctx = FUNC5(ctx);
	intr_sts |= MGB_INTR_STS_ANY;
	vec_en |= MGB_INTR_STS_ANY;

	for (i = 0; i < scctx->isc_nrxqsets; i++) {
		intr_sts |= FUNC3(i);
		dmac_enable |= FUNC1(i);
		vec_en |= FUNC2(i);
	}

	/* TX interrupts aren't needed ... */

	FUNC0(sc, MGB_INTR_ENBL_SET, intr_sts);
	FUNC0(sc, MGB_INTR_VEC_ENBL_SET, vec_en);
	FUNC0(sc, MGB_DMAC_INTR_STS, dmac_enable);
	FUNC0(sc, MGB_DMAC_INTR_ENBL_SET, dmac_enable);
}