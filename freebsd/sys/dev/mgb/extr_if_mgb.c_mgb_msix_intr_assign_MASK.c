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
struct mgb_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  admin_irq; } ;
typedef  int /*<<< orphan*/  irq_name ;
typedef  TYPE_1__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; int isc_ntxqsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFLIB_INTR_ADMIN ; 
 int /*<<< orphan*/  IFLIB_INTR_RX ; 
 int /*<<< orphan*/  IFLIB_INTR_TX ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  MGB_INTR_VEC_RX_MAP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct mgb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgb_softc*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  mgb_admin_intr ; 
 int /*<<< orphan*/  mgb_rxq_intr ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC9(if_ctx_t ctx, int msix)
{
	struct mgb_softc *sc;
	if_softc_ctx_t scctx;
	int error, i, vectorid;
	char irq_name[16];

	sc = FUNC4(ctx);
	scctx = FUNC5(ctx);

	FUNC1(scctx->isc_nrxqsets == 1 && scctx->isc_ntxqsets == 1,
	    ("num rxqsets/txqsets != 1 "));

	/*
	 * First vector should be admin interrupts, others vectors are TX/RX
	 *
	 * RIDs start at 1, and vector ids start at 0.
	 */
	vectorid = 0;
	error = FUNC6(ctx, &sc->admin_irq, vectorid + 1,
	    IFLIB_INTR_ADMIN, mgb_admin_intr, sc, 0, "admin");
	if (error) {
		FUNC3(sc->dev,
		    "Failed to register admin interrupt handler\n");
		return (error);
	}

	for (i = 0; i < scctx->isc_nrxqsets; i++) {
		vectorid++;
		FUNC8(irq_name, sizeof(irq_name), "rxq%d", i);
		error = FUNC6(ctx, &sc->rx_irq, vectorid + 1,
		    IFLIB_INTR_RX, mgb_rxq_intr, sc, i, irq_name);
		if (error) {
			FUNC3(sc->dev,
			    "Failed to register rxq %d interrupt handler\n", i);
			return (error);
		}
		FUNC0(sc, MGB_INTR_VEC_RX_MAP,
		    FUNC2(vectorid, i));
	}

	/* Not actually mapping hw TX interrupts ... */
	for (i = 0; i < scctx->isc_ntxqsets; i++) {
		FUNC8(irq_name, sizeof(irq_name), "txq%d", i);
		FUNC7(ctx, NULL, IFLIB_INTR_TX, NULL, i,
		    irq_name);
	}

	return (0);
}