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
typedef  scalar_t__ u64 ;
struct i40e_eth_stats {int /*<<< orphan*/  rx_unknown_protocol; scalar_t__ rx_discards; int /*<<< orphan*/  tx_errors; scalar_t__ tx_multicast; scalar_t__ rx_multicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_bytes; scalar_t__ tx_broadcast; scalar_t__ tx_unicast; scalar_t__ rx_broadcast; scalar_t__ rx_unicast; scalar_t__ tx_discards; } ;
struct ixl_vsi {struct i40e_eth_stats eth_stats; struct ifnet* ifp; struct ixl_pf* back; } ;
struct TYPE_2__ {scalar_t__ rx_discards; } ;
struct i40e_hw_port_stats {TYPE_1__ eth; scalar_t__ rx_jabber; scalar_t__ rx_fragments; scalar_t__ rx_oversize; scalar_t__ rx_undersize; scalar_t__ illegal_bytes; scalar_t__ crc_errors; scalar_t__ tx_dropped_link_down; } ;
struct ixl_pf {struct i40e_hw_port_stats stats; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ixl_vsi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct ixl_vsi*) ; 

void
FUNC13(struct ixl_vsi *vsi)
{
	struct ixl_pf		*pf;
	struct ifnet		*ifp;
	struct i40e_eth_stats	*es;
	u64			tx_discards;

	struct i40e_hw_port_stats *nsd;

	pf = vsi->back;
	ifp = vsi->ifp;
	es = &vsi->eth_stats;
	nsd = &pf->stats;

	FUNC12(vsi);

	tx_discards = es->tx_discards + nsd->tx_dropped_link_down;

	/* Update ifnet stats */
	FUNC4(vsi, es->rx_unicast +
	                   es->rx_multicast +
			   es->rx_broadcast);
	FUNC10(vsi, es->tx_unicast +
	                   es->tx_multicast +
			   es->tx_broadcast);
	FUNC1(vsi, es->rx_bytes);
	FUNC7(vsi, es->tx_bytes);
	FUNC3(vsi, es->rx_multicast);
	FUNC9(vsi, es->tx_multicast);

	FUNC2(vsi, nsd->crc_errors + nsd->illegal_bytes +
	    nsd->rx_undersize + nsd->rx_oversize + nsd->rx_fragments +
	    nsd->rx_jabber);
	FUNC8(vsi, es->tx_errors);
	FUNC5(vsi, es->rx_discards + nsd->eth.rx_discards);
	FUNC11(vsi, tx_discards);
	FUNC6(vsi, es->rx_unknown_protocol);
	FUNC0(vsi, 0);
}