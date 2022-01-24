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
struct TYPE_2__ {scalar_t__ idi_size; } ;
struct vmxnet3_softc {int /*<<< orphan*/ * vmx_txq; int /*<<< orphan*/ * vmx_rxq; TYPE_1__ vmx_qs_dma; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct vmxnet3_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(if_ctx_t ctx)
{
	struct vmxnet3_softc *sc;

	sc = FUNC2(ctx);

	/* Free queue state area that is shared with the device */
	if (sc->vmx_qs_dma.idi_size != 0) {
		FUNC1(&sc->vmx_qs_dma);
		sc->vmx_qs_dma.idi_size = 0;
	}

	/* Free array of receive queues */
	if (sc->vmx_rxq != NULL) {
		FUNC0(sc->vmx_rxq, M_DEVBUF);
		sc->vmx_rxq = NULL;
	}

	/* Free array of transmit queues */
	if (sc->vmx_txq != NULL) {
		FUNC0(sc->vmx_txq, M_DEVBUF);
		sc->vmx_txq = NULL;
	}
}