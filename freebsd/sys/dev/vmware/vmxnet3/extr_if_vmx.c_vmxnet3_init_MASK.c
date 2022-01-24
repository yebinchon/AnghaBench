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
struct vmxnet3_softc {int /*<<< orphan*/  vmx_lladdr; int /*<<< orphan*/  vmx_ifp; TYPE_1__* vmx_scctx; } ;
typedef  TYPE_1__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_2__ {scalar_t__ isc_max_frame_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 scalar_t__ ETHER_CRC_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct vmxnet3_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmxnet3_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmxnet3_softc*) ; 

__attribute__((used)) static void
FUNC11(if_ctx_t ctx)
{
	struct vmxnet3_softc *sc;
	if_softc_ctx_t scctx;
	
	sc = FUNC4(ctx);
	scctx = sc->vmx_scctx;

	scctx->isc_max_frame_size = FUNC2(FUNC3(ctx)) +
	    ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN + ETHER_CRC_LEN;

	/* Use the current MAC address. */
	FUNC1(FUNC0(sc->vmx_ifp), sc->vmx_lladdr, ETHER_ADDR_LEN);
	FUNC10(sc);

	FUNC9(sc);
	FUNC7(sc);

	FUNC5(sc);

	FUNC8(sc);
	FUNC6(sc);
}