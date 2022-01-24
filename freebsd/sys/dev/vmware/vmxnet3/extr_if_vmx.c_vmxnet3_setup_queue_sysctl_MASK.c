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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_ntxqsets; int isc_nrxqsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_softc*,struct sysctl_ctx_list*,struct sysctl_oid_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sysctl_ctx_list*,struct sysctl_oid_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sysctl_ctx_list*,struct sysctl_oid_list*) ; 

__attribute__((used)) static void
FUNC3(struct vmxnet3_softc *sc,
    struct sysctl_ctx_list *ctx, struct sysctl_oid_list *child)
{
	if_softc_ctx_t scctx;
	int i;

	scctx = sc->vmx_scctx;
	
	for (i = 0; i < scctx->isc_ntxqsets; i++)
		FUNC2(&sc->vmx_txq[i], ctx, child);
	for (i = 0; i < scctx->isc_nrxqsets; i++)
		FUNC1(&sc->vmx_rxq[i], ctx, child);

	FUNC0(sc, ctx, child);
}