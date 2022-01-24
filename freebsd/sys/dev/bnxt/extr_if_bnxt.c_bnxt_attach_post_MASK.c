#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bnxt_softc {TYPE_1__* scctx; int /*<<< orphan*/  media; } ;
typedef  TYPE_2__* if_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
struct TYPE_5__ {scalar_t__ if_mtu; } ;
struct TYPE_4__ {scalar_t__ isc_max_frame_size; } ;

/* Variables and functions */
 scalar_t__ ETHER_CRC_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_softc*) ; 
 int FUNC3 (struct bnxt_softc*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 struct bnxt_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC5(ctx);
	if_t ifp = FUNC4(ctx);
	int rc;

	FUNC1(softc);

	/* Update link state etc... */
	rc = FUNC3(softc);
	if (rc)
		goto failed;

	/* Needs to be done after probing the phy */
	FUNC2(softc);
	FUNC0(softc);
	FUNC6(softc->media, IFM_ETHER | IFM_AUTO);

	softc->scctx->isc_max_frame_size = ifp->if_mtu + ETHER_HDR_LEN +
	    ETHER_CRC_LEN;

failed:
	return rc;
}