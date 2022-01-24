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
typedef  int /*<<< orphan*/  uint64_t ;
struct tx_ring {int me; struct ixl_tx_queue* que; int /*<<< orphan*/  tx_paddr; struct i40e_tx_desc* tx_base; int /*<<< orphan*/  tail; int /*<<< orphan*/ * tx_rsq; } ;
struct ixl_vsi {int /*<<< orphan*/  enable_head_writeback; struct ixl_tx_queue* tx_queues; TYPE_1__* shared; } ;
struct ixl_tx_queue {struct ixl_vsi* vsi; struct tx_ring txr; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;
struct i40e_tx_desc {int dummy; } ;
typedef  int /*<<< orphan*/  qidx_t ;
typedef  TYPE_1__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int isc_ntxqsets; int* isc_ntxd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  M_IAVF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  QIDX_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct iavf_sc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs, int ntxqs, int ntxqsets)
{
	struct iavf_sc *sc = FUNC5(ctx);
	struct ixl_vsi *vsi = &sc->vsi;
	if_softc_ctx_t scctx = vsi->shared;
	struct ixl_tx_queue *que;
	int i, j, error = 0;

	FUNC1(scctx->isc_ntxqsets > 0);
	FUNC1(ntxqs == 1);
	FUNC1(scctx->isc_ntxqsets == ntxqsets);

	/* Allocate queue structure memory */
	if (!(vsi->tx_queues =
	    (struct ixl_tx_queue *) FUNC6(sizeof(struct ixl_tx_queue) *ntxqsets, M_IAVF, M_NOWAIT | M_ZERO))) {
		FUNC2(FUNC4(ctx), "Unable to allocate TX ring memory\n");
		return (ENOMEM);
	}

	for (i = 0, que = vsi->tx_queues; i < ntxqsets; i++, que++) {
		struct tx_ring *txr = &que->txr;

		txr->me = i;
		que->vsi = vsi;

		if (!vsi->enable_head_writeback) {
			/* Allocate report status array */
			if (!(txr->tx_rsq = FUNC6(sizeof(qidx_t) * scctx->isc_ntxd[0], M_IAVF, M_NOWAIT))) {
				FUNC2(FUNC4(ctx), "failed to allocate tx_rsq memory\n");
				error = ENOMEM;
				goto fail;
			}
			/* Init report status array */
			for (j = 0; j < scctx->isc_ntxd[0]; j++)
				txr->tx_rsq[j] = QIDX_INVALID;
		}
		/* get the virtual and physical address of the hardware queues */
		txr->tail = FUNC0(txr->me);
		txr->tx_base = (struct i40e_tx_desc *)vaddrs[i * ntxqs];
		txr->tx_paddr = paddrs[i * ntxqs];
		txr->que = que;
	}

	return (0);
fail:
	FUNC3(ctx);
	return (error);
}