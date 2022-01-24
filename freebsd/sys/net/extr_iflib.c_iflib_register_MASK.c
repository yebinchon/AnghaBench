#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/ * if_t ;
typedef  TYPE_1__* if_shared_ctx_t ;
typedef  TYPE_2__* if_ctx_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {int /*<<< orphan*/ * ifc_mediap; int /*<<< orphan*/  ifc_media; void* ifc_vlan_detach_event; void* ifc_vlan_attach_event; int /*<<< orphan*/ * ifc_ifp; int /*<<< orphan*/  ifc_dev; TYPE_1__* ifc_sctx; } ;
struct TYPE_9__ {int isc_flags; int /*<<< orphan*/ * isc_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_FIRST ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFLIB_DRIVER_MEDIA ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iflib_altq_if_start ; 
 int /*<<< orphan*/  iflib_altq_if_transmit ; 
 int /*<<< orphan*/  iflib_if_init ; 
 int /*<<< orphan*/  iflib_if_ioctl ; 
 int /*<<< orphan*/  iflib_if_qflush ; 
 int /*<<< orphan*/  iflib_if_transmit ; 
 int /*<<< orphan*/  iflib_media_change ; 
 int /*<<< orphan*/  iflib_media_status ; 
 int /*<<< orphan*/  iflib_vlan_register ; 
 int /*<<< orphan*/  iflib_vlan_unregister ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

__attribute__((used)) static int
FUNC22(if_ctx_t ctx)
{
	if_shared_ctx_t sctx = ctx->ifc_sctx;
	driver_t *driver = sctx->isc_driver;
	device_t dev = ctx->ifc_dev;
	if_t ifp;

	FUNC3(sctx);

	FUNC0(ctx);
	FUNC2(ctx, FUNC5(ctx->ifc_dev));
	ifp = ctx->ifc_ifp = FUNC8(IFT_ETHER);
	if (ifp == NULL) {
		FUNC7(dev, "can not allocate ifnet structure\n");
		return (ENOMEM);
	}

	/*
	 * Initialize our context's device specific methods
	 */
	FUNC21((kobj_t) ctx, (kobj_class_t) driver);
	FUNC20((kobj_class_t) driver);

	FUNC9(ifp, FUNC4(dev), FUNC6(dev));
	FUNC16(ifp, ctx);
	FUNC10(ifp, dev);
	FUNC12(ifp, iflib_if_init);
	FUNC13(ifp, iflib_if_ioctl);
#ifdef ALTQ
	if_setstartfn(ifp, iflib_altq_if_start);
	if_settransmitfn(ifp, iflib_altq_if_transmit);
	if_setsendqready(ifp);
#else
	FUNC18(ifp, iflib_if_transmit);
#endif
	FUNC14(ifp, iflib_if_qflush);
	FUNC11(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);

	ctx->ifc_vlan_attach_event =
		FUNC1(vlan_config, iflib_vlan_register, ctx,
							  EVENTHANDLER_PRI_FIRST);
	ctx->ifc_vlan_detach_event =
		FUNC1(vlan_unconfig, iflib_vlan_unregister, ctx,
							  EVENTHANDLER_PRI_FIRST);

	if ((sctx->isc_flags & IFLIB_DRIVER_MEDIA) == 0) {
		ctx->ifc_mediap = &ctx->ifc_media;
		FUNC19(ctx->ifc_mediap, IFM_IMASK,
		    iflib_media_change, iflib_media_status);
	}
	return (0);
}