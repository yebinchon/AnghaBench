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
typedef  int u32 ;
struct TYPE_2__ {int rx_pb_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int IXGBE_MAX_PB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXGBE_RXPBSIZE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IXGBE_TXPBSIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IXGBE_TXPKT_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
#define  PBA_STRATEGY_EQUAL 129 
#define  PBA_STRATEGY_WEIGHTED 128 

void FUNC4(struct ixgbe_hw *hw, int num_pb, u32 headroom,
			     int strategy)
{
	u32 pbsize = hw->mac.rx_pb_size;
	int i = 0;
	u32 rxpktsize, txpktsize, txpbthresh;

	/* Reserve headroom */
	pbsize -= headroom;

	if (!num_pb)
		num_pb = 1;

	/* Divide remaining packet buffer space amongst the number of packet
	 * buffers requested using supplied strategy.
	 */
	switch (strategy) {
	case PBA_STRATEGY_WEIGHTED:
		/* ixgbe_dcb_pba_80_48 strategy weight first half of packet
		 * buffer with 5/8 of the packet buffer space.
		 */
		rxpktsize = (pbsize * 5) / (num_pb * 4);
		pbsize -= rxpktsize * (num_pb / 2);
		rxpktsize <<= IXGBE_RXPBSIZE_SHIFT;
		for (; i < (num_pb / 2); i++)
			FUNC3(hw, FUNC0(i), rxpktsize);
		/* configure remaining packet buffers */
		/* FALLTHROUGH */
	case PBA_STRATEGY_EQUAL:
		rxpktsize = (pbsize / (num_pb - i)) << IXGBE_RXPBSIZE_SHIFT;
		for (; i < num_pb; i++)
			FUNC3(hw, FUNC0(i), rxpktsize);
		break;
	default:
		break;
	}

	/* Only support an equally distributed Tx packet buffer strategy. */
	txpktsize = IXGBE_TXPBSIZE_MAX / num_pb;
	txpbthresh = (txpktsize / 1024) - IXGBE_TXPKT_SIZE_MAX;
	for (i = 0; i < num_pb; i++) {
		FUNC3(hw, FUNC1(i), txpktsize);
		FUNC3(hw, FUNC2(i), txpbthresh);
	}

	/* Clear unused TCs, if any, to zero buffer size*/
	for (; i < IXGBE_MAX_PB; i++) {
		FUNC3(hw, FUNC0(i), 0);
		FUNC3(hw, FUNC1(i), 0);
		FUNC3(hw, FUNC2(i), 0);
	}
}