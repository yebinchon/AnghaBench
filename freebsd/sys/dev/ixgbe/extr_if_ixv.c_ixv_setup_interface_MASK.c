#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ifq_maxlen; } ;
struct ifnet {scalar_t__ if_mtu; TYPE_1__ if_snd; } ;
struct adapter {int /*<<< orphan*/  media; scalar_t__ max_frame_size; TYPE_2__* shared; } ;
typedef  TYPE_2__* if_softc_ctx_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_4__ {scalar_t__* isc_ntxd; } ;

/* Variables and functions */
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IXGBE_MTU_HDR ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC4(ctx);
	if_softc_ctx_t scctx = adapter->shared;
	struct ifnet   *ifp = FUNC3(ctx);

	FUNC1("ixv_setup_interface: begin");

	FUNC2(ifp, FUNC0(10));
	ifp->if_snd.ifq_maxlen = scctx->isc_ntxd[0] - 2;


	adapter->max_frame_size = ifp->if_mtu + IXGBE_MTU_HDR;
	FUNC5(adapter->media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC6(adapter->media, IFM_ETHER | IFM_AUTO);

	return 0;
}