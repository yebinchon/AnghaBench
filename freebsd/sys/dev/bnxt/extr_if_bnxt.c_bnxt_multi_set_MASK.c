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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  idi_map; int /*<<< orphan*/  idi_tag; int /*<<< orphan*/  idi_size; int /*<<< orphan*/ * idi_vaddr; } ;
struct TYPE_4__ {int mc_list_count; int /*<<< orphan*/  rx_mask; TYPE_1__ mc_list; } ;
struct bnxt_softc {int /*<<< orphan*/  dev; TYPE_2__ vnic_info; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int BNXT_MAX_MC_ADDRS ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST ; 
 int /*<<< orphan*/  HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_MCAST ; 
 int /*<<< orphan*/  bnxt_copy_maddr ; 
 scalar_t__ FUNC0 (struct bnxt_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bnxt_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC6(ctx);
	if_t ifp = FUNC5(ctx);
	uint8_t *mta;
	int mcnt;

	mta = softc->vnic_info.mc_list.idi_vaddr;
	FUNC2(mta, softc->vnic_info.mc_list.idi_size);
	mcnt = FUNC4(ifp, bnxt_copy_maddr, mta);

	if (mcnt > BNXT_MAX_MC_ADDRS) {
		softc->vnic_info.rx_mask |=
		    HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST;
		FUNC0(softc, &softc->vnic_info);
	} else {
		softc->vnic_info.rx_mask &=
		    ~HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST;
		FUNC1(softc->vnic_info.mc_list.idi_tag,
		    softc->vnic_info.mc_list.idi_map, BUS_DMASYNC_PREWRITE);
		softc->vnic_info.mc_list_count = mcnt;
		softc->vnic_info.rx_mask |=
		    HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_MCAST;
		if (FUNC0(softc, &softc->vnic_info))
			FUNC3(softc->dev,
			    "set_multi: rx_mask set failed\n");
	}
}