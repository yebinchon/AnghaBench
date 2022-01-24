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
typedef  scalar_t__ u64 ;
struct ixl_vsi {TYPE_2__* shared; } ;
struct ixl_vf {int vf_flags; int /*<<< orphan*/  vsi; } ;
struct TYPE_3__ {scalar_t__ rx_discards; int /*<<< orphan*/  tx_broadcast; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  tx_multicast; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  tx_unicast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_bytes; } ;
struct i40e_hw_port_stats {scalar_t__ link_xoff_rx; scalar_t__ crc_errors; scalar_t__ illegal_bytes; scalar_t__ tx_dropped_link_down; scalar_t__ mac_local_faults; scalar_t__ mac_remote_faults; scalar_t__ rx_length_errors; scalar_t__ link_xon_rx; scalar_t__ link_xon_tx; scalar_t__ link_xoff_tx; scalar_t__ rx_undersize; scalar_t__ rx_fragments; scalar_t__ rx_oversize; scalar_t__ rx_jabber; int /*<<< orphan*/  tx_size_big; int /*<<< orphan*/  tx_size_1522; int /*<<< orphan*/  tx_size_1023; int /*<<< orphan*/  tx_size_511; int /*<<< orphan*/  tx_size_255; int /*<<< orphan*/  tx_size_127; int /*<<< orphan*/  tx_size_64; int /*<<< orphan*/  rx_size_big; int /*<<< orphan*/  rx_size_1522; int /*<<< orphan*/  rx_size_1023; int /*<<< orphan*/  rx_size_511; int /*<<< orphan*/  rx_size_255; int /*<<< orphan*/  rx_size_127; int /*<<< orphan*/  rx_size_64; TYPE_1__ eth; } ;
struct i40e_hw {int /*<<< orphan*/  port; } ;
struct ixl_pf {int stat_offsets_loaded; int num_vfs; struct ixl_vf* vfs; struct i40e_hw_port_stats stats; struct i40e_hw_port_stats stats_offsets; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct TYPE_4__ {int isc_pause_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ ) ; 
 int VF_FLAG_ENABLED ; 
 int /*<<< orphan*/  FUNC59 (struct i40e_hw*,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC60 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC61 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC62 (struct ixl_vsi*) ; 

void
FUNC63(struct ixl_pf *pf)
{
	struct i40e_hw	*hw = &pf->hw;
	struct ixl_vsi	*vsi = &pf->vsi;
	struct ixl_vf	*vf;
	u64 prev_link_xoff_rx = pf->stats.link_xoff_rx;

	struct i40e_hw_port_stats *nsd = &pf->stats;
	struct i40e_hw_port_stats *osd = &pf->stats_offsets;

	/* Update hw stats */
	FUNC59(hw, FUNC4(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->crc_errors, &nsd->crc_errors);
	FUNC59(hw, FUNC9(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->illegal_bytes, &nsd->illegal_bytes);
	FUNC60(hw, FUNC5(hw->port),
			   FUNC6(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.rx_bytes, &nsd->eth.rx_bytes);
	FUNC60(hw, FUNC7(hw->port),
			   FUNC8(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.tx_bytes, &nsd->eth.tx_bytes);
	FUNC59(hw, FUNC48(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.rx_discards,
			   &nsd->eth.rx_discards);
	FUNC60(hw, FUNC55(hw->port),
			   FUNC56(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.rx_unicast,
			   &nsd->eth.rx_unicast);
	FUNC60(hw, FUNC57(hw->port),
			   FUNC58(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.tx_unicast,
			   &nsd->eth.tx_unicast);
	FUNC60(hw, FUNC15(hw->port),
			   FUNC16(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.rx_multicast,
			   &nsd->eth.rx_multicast);
	FUNC60(hw, FUNC17(hw->port),
			   FUNC18(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.tx_multicast,
			   &nsd->eth.tx_multicast);
	FUNC60(hw, FUNC0(hw->port),
			   FUNC1(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.rx_broadcast,
			   &nsd->eth.rx_broadcast);
	FUNC60(hw, FUNC2(hw->port),
			   FUNC3(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->eth.tx_broadcast,
			   &nsd->eth.tx_broadcast);

	FUNC59(hw, FUNC54(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_dropped_link_down,
			   &nsd->tx_dropped_link_down);
	FUNC59(hw, FUNC14(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->mac_local_faults,
			   &nsd->mac_local_faults);
	FUNC59(hw, FUNC19(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->mac_remote_faults,
			   &nsd->mac_remote_faults);
	FUNC59(hw, FUNC51(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_length_errors,
			   &nsd->rx_length_errors);

	/* Flow control (LFC) stats */
	FUNC59(hw, FUNC12(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->link_xon_rx, &nsd->link_xon_rx);
	FUNC59(hw, FUNC13(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->link_xon_tx, &nsd->link_xon_tx);
	FUNC59(hw, FUNC10(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->link_xoff_rx, &nsd->link_xoff_rx);
	FUNC59(hw, FUNC11(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->link_xoff_tx, &nsd->link_xoff_tx);

	/*
	 * For watchdog management we need to know if we have been paused
	 * during the last interval, so capture that here.
	 */
	if (pf->stats.link_xoff_rx != prev_link_xoff_rx)
		vsi->shared->isc_pause_frames = 1;

	/* Packet size stats rx */
	FUNC60(hw, FUNC30(hw->port),
			   FUNC31(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_size_64, &nsd->rx_size_64);
	FUNC60(hw, FUNC22(hw->port),
			   FUNC23(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_size_127, &nsd->rx_size_127);
	FUNC60(hw, FUNC26(hw->port),
			   FUNC27(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_size_255, &nsd->rx_size_255);
	FUNC60(hw, FUNC28(hw->port),
			   FUNC29(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_size_511, &nsd->rx_size_511);
	FUNC60(hw, FUNC20(hw->port),
			   FUNC21(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_size_1023, &nsd->rx_size_1023);
	FUNC60(hw, FUNC24(hw->port),
			   FUNC25(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_size_1522, &nsd->rx_size_1522);
	FUNC60(hw, FUNC32(hw->port),
			   FUNC33(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_size_big, &nsd->rx_size_big);

	/* Packet size stats tx */
	FUNC60(hw, FUNC44(hw->port),
			   FUNC45(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_size_64, &nsd->tx_size_64);
	FUNC60(hw, FUNC36(hw->port),
			   FUNC37(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_size_127, &nsd->tx_size_127);
	FUNC60(hw, FUNC40(hw->port),
			   FUNC41(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_size_255, &nsd->tx_size_255);
	FUNC60(hw, FUNC42(hw->port),
			   FUNC43(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_size_511, &nsd->tx_size_511);
	FUNC60(hw, FUNC34(hw->port),
			   FUNC35(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_size_1023, &nsd->tx_size_1023);
	FUNC60(hw, FUNC38(hw->port),
			   FUNC39(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_size_1522, &nsd->tx_size_1522);
	FUNC60(hw, FUNC46(hw->port),
			   FUNC47(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->tx_size_big, &nsd->tx_size_big);

	FUNC59(hw, FUNC53(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_undersize, &nsd->rx_undersize);
	FUNC59(hw, FUNC49(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_fragments, &nsd->rx_fragments);
	FUNC59(hw, FUNC52(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_oversize, &nsd->rx_oversize);
	FUNC59(hw, FUNC50(hw->port),
			   pf->stat_offsets_loaded,
			   &osd->rx_jabber, &nsd->rx_jabber);
	pf->stat_offsets_loaded = true;
	/* End hw stats */

	/* Update vsi stats */
	FUNC62(vsi);

	for (int i = 0; i < pf->num_vfs; i++) {
		vf = &pf->vfs[i];
		if (vf->vf_flags & VF_FLAG_ENABLED)
			FUNC61(&pf->vfs[i].vsi);
	}
}