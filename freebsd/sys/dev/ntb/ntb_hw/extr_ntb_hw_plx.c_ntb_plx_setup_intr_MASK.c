#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ntb_plx_softc {int /*<<< orphan*/  link; int /*<<< orphan*/  int_tag; int /*<<< orphan*/ * int_res; scalar_t__ int_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct ntb_plx_softc*,int,int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ntb_plx_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ntb_plx_isr ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ntb_plx_softc *sc = FUNC3(dev);
	int error;

	/*
	 * XXX: This hardware supports MSI, but I found it unusable.
	 * It generates new MSI only when doorbell register goes from
	 * zero, but does not generate it when another bit is set or on
	 * partial clear.  It makes operation very racy and unreliable.
	 * The data book mentions some mask juggling magic to workaround
	 * that, but I failed to make it work.
	 */
	sc->int_rid = 0;
	sc->int_res = FUNC1(dev, SYS_RES_IRQ,
	    &sc->int_rid, RF_SHAREABLE|RF_ACTIVE);
	if (sc->int_res == NULL) {
		FUNC4(dev, "bus_alloc_resource failed\n");
		return (ENOMEM);
	}
	error = FUNC2(dev, sc->int_res, INTR_MPSAFE | INTR_TYPE_MISC,
	    NULL, ntb_plx_isr, dev, &sc->int_tag);
	if (error != 0) {
		FUNC4(dev, "bus_setup_intr failed: %d\n", error);
		return (error);
	}

	if (!sc->link) { /* Link Interface has no Link Error registers. */
		FUNC0(sc, 0xfe0, 0xf);	/* Clear link interrupts. */
		FUNC0(sc, 0xfe4, 0x0);	/* Unmask link interrupts. */
	}
	return (0);
}