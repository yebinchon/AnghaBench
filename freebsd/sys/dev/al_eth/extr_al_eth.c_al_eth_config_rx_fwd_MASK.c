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
typedef  scalar_t__ uint8_t ;
struct al_eth_fwd_ctrl_table_entry {int /*<<< orphan*/  filter; int /*<<< orphan*/  udma_sel; int /*<<< orphan*/  queue_sel_2; int /*<<< orphan*/  queue_sel_1; int /*<<< orphan*/  prio_sel; } ;
struct al_eth_adapter {int /*<<< orphan*/ * rss_ind_tbl; int /*<<< orphan*/ * toeplitz_hash_key; int /*<<< orphan*/  hal_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_ETH_CTRL_TABLE_PRIO_SEL_VAL_0 ; 
 int /*<<< orphan*/  AL_ETH_CTRL_TABLE_QUEUE_SEL_1_THASH_TABLE ; 
 int /*<<< orphan*/  AL_ETH_CTRL_TABLE_QUEUE_SEL_2_NO_PRIO ; 
 int /*<<< orphan*/  AL_ETH_CTRL_TABLE_UDMA_SEL_MAC_TABLE ; 
 int AL_ETH_FWD_PBITS_TABLE_NUM ; 
 int AL_ETH_FWD_PRIO_TABLE_NUM ; 
 int /*<<< orphan*/  AL_ETH_MAC_TABLE_BROADCAST_IDX ; 
 int /*<<< orphan*/  AL_ETH_MAC_TABLE_UNICAST_IDX_BASE ; 
 int /*<<< orphan*/  AL_ETH_NUM_QUEUES ; 
 int AL_ETH_RX_HASH_KEY_NUM ; 
 int AL_ETH_RX_RSS_TABLE_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct al_eth_fwd_ctrl_table_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct al_eth_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct al_eth_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct al_eth_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct al_eth_adapter*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 

__attribute__((used)) static void
FUNC12(struct al_eth_adapter *adapter)
{
	struct al_eth_fwd_ctrl_table_entry entry;
	int i;

	/* let priority be equal to pbits */
	for (i = 0; i < AL_ETH_FWD_PBITS_TABLE_NUM; i++)
		FUNC2(&adapter->hal_adapter, i, i);

	/* map priority to queue index, queue id = priority/2 */
	for (i = 0; i < AL_ETH_FWD_PRIO_TABLE_NUM; i++)
		FUNC3(&adapter->hal_adapter, i, i >> 1);

	entry.prio_sel = AL_ETH_CTRL_TABLE_PRIO_SEL_VAL_0;
	entry.queue_sel_1 = AL_ETH_CTRL_TABLE_QUEUE_SEL_1_THASH_TABLE;
	entry.queue_sel_2 = AL_ETH_CTRL_TABLE_QUEUE_SEL_2_NO_PRIO;
	entry.udma_sel = AL_ETH_CTRL_TABLE_UDMA_SEL_MAC_TABLE;
	entry.filter = FALSE;

	FUNC0(&adapter->hal_adapter, FALSE, &entry);

	/*
	 * By default set the mac table to forward all unicast packets to our
	 * MAC address and all broadcast. all the rest will be dropped.
	 */
	FUNC7(adapter, AL_ETH_MAC_TABLE_UNICAST_IDX_BASE,
	    1);
	FUNC5(adapter, AL_ETH_MAC_TABLE_BROADCAST_IDX, 1);
	FUNC6(adapter, false);

	/* set toeplitz hash keys */
	for (i = 0; i < sizeof(adapter->toeplitz_hash_key); i++)
		*((uint8_t*)adapter->toeplitz_hash_key + i) = (uint8_t)FUNC11();

	for (i = 0; i < AL_ETH_RX_HASH_KEY_NUM; i++)
		FUNC4(&adapter->hal_adapter, i,
		    FUNC10(adapter->toeplitz_hash_key[i]));

	for (i = 0; i < AL_ETH_RX_RSS_TABLE_SIZE; i++) {
		adapter->rss_ind_tbl[i] = FUNC9(i,
		    AL_ETH_NUM_QUEUES);
		FUNC8(adapter, i, 0,
		    adapter->rss_ind_tbl[i]);
	}

	FUNC1(adapter);
}