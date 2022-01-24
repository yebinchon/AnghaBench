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
struct vmxnet3_softc {int /*<<< orphan*/ * vmx_rxq; int /*<<< orphan*/ * vmx_txq; TYPE_1__* vmx_scctx; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_ntxqsets; int isc_nrxqsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct vmxnet3_softc *sc)
{
	if_softc_ctx_t scctx;
	int q;

	scctx = sc->vmx_scctx;

	for (q = 0; q < scctx->isc_ntxqsets; q++)
		FUNC1(sc, &sc->vmx_txq[q]);

	for (q = 0; q < scctx->isc_nrxqsets; q++)
		FUNC0(sc, &sc->vmx_rxq[q]);
}