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
typedef  TYPE_1__* if_shared_ctx_t ;
struct TYPE_3__ {int isc_tx_maxsize; int isc_tx_maxsegsize; int isc_rx_maxsize; int isc_rx_nsegments; int isc_rx_maxsegsize; int isc_nrxqs; int* isc_nrxd_min; int* isc_nrxd_max; int* isc_nrxd_default; int isc_ntxqs; int* isc_ntxd_min; int* isc_ntxd_max; int* isc_ntxd_default; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(if_shared_ctx_t sctx)
{
	int i;

	FUNC0(sctx->isc_tx_maxsize);
	FUNC0(sctx->isc_tx_maxsegsize);

	FUNC0(sctx->isc_rx_maxsize);
	FUNC0(sctx->isc_rx_nsegments);
	FUNC0(sctx->isc_rx_maxsegsize);

	FUNC0(sctx->isc_nrxqs >= 1 && sctx->isc_nrxqs <= 8);
	for (i = 0; i < sctx->isc_nrxqs; i++) {
		FUNC0(sctx->isc_nrxd_min[i]);
		FUNC0(FUNC1(sctx->isc_nrxd_min[i]));
		FUNC0(sctx->isc_nrxd_max[i]);
		FUNC0(FUNC1(sctx->isc_nrxd_max[i]));
		FUNC0(sctx->isc_nrxd_default[i]);
		FUNC0(FUNC1(sctx->isc_nrxd_default[i]));
	}

	FUNC0(sctx->isc_ntxqs >= 1 && sctx->isc_ntxqs <= 8);
	for (i = 0; i < sctx->isc_ntxqs; i++) {
		FUNC0(sctx->isc_ntxd_min[i]);
		FUNC0(FUNC1(sctx->isc_ntxd_min[i]));
		FUNC0(sctx->isc_ntxd_max[i]);
		FUNC0(FUNC1(sctx->isc_ntxd_max[i]));
		FUNC0(sctx->isc_ntxd_default[i]);
		FUNC0(FUNC1(sctx->isc_ntxd_default[i]));
	}
}