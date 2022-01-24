#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct i40e_eth_stats {int /*<<< orphan*/  rx_unknown_protocol; int /*<<< orphan*/  rx_discards; int /*<<< orphan*/  tx_errors; scalar_t__ tx_multicast; scalar_t__ rx_multicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_bytes; scalar_t__ tx_broadcast; scalar_t__ tx_unicast; scalar_t__ rx_broadcast; scalar_t__ rx_unicast; int /*<<< orphan*/  tx_discards; } ;
struct ixl_vsi {struct i40e_eth_stats eth_stats; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 

void
FUNC11(struct iavf_sc *sc, struct i40e_eth_stats *es)
{
	struct ixl_vsi *vsi = &sc->vsi;
	uint64_t tx_discards;

	tx_discards = es->tx_discards;

	/* Update ifnet stats */
	FUNC3(vsi, es->rx_unicast +
	                   es->rx_multicast +
			   es->rx_broadcast);
	FUNC9(vsi, es->tx_unicast +
	                   es->tx_multicast +
			   es->tx_broadcast);
	FUNC1(vsi, es->rx_bytes);
	FUNC6(vsi, es->tx_bytes);
	FUNC2(vsi, es->rx_multicast);
	FUNC8(vsi, es->tx_multicast);

	FUNC7(vsi, es->tx_errors);
	FUNC4(vsi, es->rx_discards);
	FUNC10(vsi, tx_discards);
	FUNC5(vsi, es->rx_unknown_protocol);
	FUNC0(vsi, 0);

	vsi->eth_stats = *es;
}