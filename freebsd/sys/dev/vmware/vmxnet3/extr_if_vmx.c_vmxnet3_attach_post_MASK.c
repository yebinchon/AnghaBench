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
struct vmxnet3_softc {int /*<<< orphan*/  vmx_media; int /*<<< orphan*/  vmx_flags; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int isc_nrxqsets; } ;

/* Variables and functions */
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  VMXNET3_FLAG_RSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vmxnet3_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmxnet3_softc*) ; 

__attribute__((used)) static int
FUNC8(if_ctx_t ctx)
{
	device_t dev;
	if_softc_ctx_t scctx;
	struct vmxnet3_softc *sc;
	int error;

	dev = FUNC0(ctx);
	scctx = FUNC2(ctx);
	sc = FUNC1(ctx);

	if (scctx->isc_nrxqsets > 1)
		sc->vmx_flags |= VMXNET3_FLAG_RSS;

	error = FUNC5(sc);
	if (error)
		goto fail;

	FUNC6(sc);
	FUNC7(sc);

	FUNC3(sc->vmx_media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC4(sc->vmx_media, IFM_ETHER | IFM_AUTO);

fail:
	return (error);
}