#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmxnet3_softc {int /*<<< orphan*/  vmx_dev; TYPE_1__* vmx_scctx; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_nrxqsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VMXNET3_CMD_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmxnet3_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct vmxnet3_softc *sc)
{
	if_softc_ctx_t scctx;
	int q;

	scctx = sc->vmx_scctx;

	if (FUNC3(sc, VMXNET3_CMD_ENABLE) != 0) {
		FUNC2(sc->vmx_dev, "device enable command failed!\n");
		return (1);
	}

	/* Reset the Rx queue heads. */
	for (q = 0; q < scctx->isc_nrxqsets; q++) {
		FUNC4(sc, FUNC0(q), 0);
		FUNC4(sc, FUNC1(q), 0);
	}

	return (0);
}