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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_eth_stats {int /*<<< orphan*/  tx_broadcast; int /*<<< orphan*/  tx_multicast; int /*<<< orphan*/  tx_unicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_discards; int /*<<< orphan*/  tx_errors; } ;
struct TYPE_2__ {int /*<<< orphan*/  stat_counter_idx; } ;
struct ixl_vsi {int stat_offsets_loaded; struct i40e_eth_stats eth_stats_offsets; struct i40e_eth_stats eth_stats; TYPE_1__ info; scalar_t__ back; } ;
struct i40e_hw_port_stats {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw_port_stats stats; struct i40e_hw hw; } ;

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
 int /*<<< orphan*/  FUNC18 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC20(struct ixl_vsi *vsi)
{
	struct ixl_pf *pf = (struct ixl_pf *)vsi->back;
	struct i40e_hw *hw = &pf->hw;
	struct i40e_eth_stats *es;
	struct i40e_eth_stats *oes;
	struct i40e_hw_port_stats *nsd;
	u16 stat_idx = vsi->info.stat_counter_idx;

	es = &vsi->eth_stats;
	oes = &vsi->eth_stats_offsets;
	nsd = &pf->stats;

	/* Gather up the stats that the hw collects */
	FUNC18(hw, FUNC13(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->tx_errors, &es->tx_errors);
	FUNC18(hw, FUNC12(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->rx_discards, &es->rx_discards);

	FUNC19(hw, FUNC4(stat_idx),
			   FUNC5(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->rx_bytes, &es->rx_bytes);
	FUNC19(hw, FUNC14(stat_idx),
			   FUNC15(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->rx_unicast, &es->rx_unicast);
	FUNC19(hw, FUNC8(stat_idx),
			   FUNC9(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->rx_multicast, &es->rx_multicast);
	FUNC19(hw, FUNC0(stat_idx),
			   FUNC1(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->rx_broadcast, &es->rx_broadcast);

	FUNC19(hw, FUNC6(stat_idx),
			   FUNC7(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->tx_bytes, &es->tx_bytes);
	FUNC19(hw, FUNC16(stat_idx),
			   FUNC17(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->tx_unicast, &es->tx_unicast);
	FUNC19(hw, FUNC10(stat_idx),
			   FUNC11(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->tx_multicast, &es->tx_multicast);
	FUNC19(hw, FUNC2(stat_idx),
			   FUNC3(stat_idx),
			   vsi->stat_offsets_loaded,
			   &oes->tx_broadcast, &es->tx_broadcast);
	vsi->stat_offsets_loaded = true;
}