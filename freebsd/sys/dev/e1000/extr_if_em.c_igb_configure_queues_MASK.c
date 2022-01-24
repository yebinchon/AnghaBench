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
struct em_tx_queue {int msix; int eims; } ;
struct em_rx_queue {int msix; int eims; } ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct adapter {int rx_num_queues; int tx_num_queues; int que_mask; int linkvec; int link_mask; struct em_rx_queue* rx_queues; struct em_tx_queue* tx_queues; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_EIAME ; 
 int E1000_CTRL_EXT_IRCA ; 
 int E1000_CTRL_EXT_PBA_CLR ; 
 int E1000_EICR_RX_QUEUE0 ; 
 int E1000_EICR_TX_QUEUE0 ; 
 int E1000_EIMS_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E1000_EITR_CNT_IGNR ; 
 int /*<<< orphan*/  E1000_GPIE ; 
 int E1000_GPIE_EIAME ; 
 int E1000_GPIE_MSIX_MODE ; 
 int E1000_GPIE_NSICR ; 
 int E1000_GPIE_PBA ; 
 int /*<<< orphan*/  E1000_IVAR0 ; 
 int /*<<< orphan*/  E1000_IVAR_MISC ; 
 int E1000_IVAR_VALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int,int) ; 
#define  e1000_82575 136 
#define  e1000_82576 135 
#define  e1000_82580 134 
#define  e1000_i210 133 
#define  e1000_i211 132 
#define  e1000_i350 131 
#define  e1000_i354 130 
#define  e1000_vfadapt 129 
#define  e1000_vfadapt_i350 128 
 int em_max_interrupt_rate ; 

__attribute__((used)) static void
FUNC6(struct adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct em_rx_queue *rx_que;
	struct em_tx_queue *tx_que;
	u32 tmp, ivar = 0, newitr = 0;

	/* First turn on RSS capability */
	if (adapter->hw.mac.type != e1000_82575)
		FUNC4(hw, E1000_GPIE,
		    E1000_GPIE_MSIX_MODE | E1000_GPIE_EIAME |
		    E1000_GPIE_PBA | E1000_GPIE_NSICR);

	/* Turn on MSI-X */
	switch (adapter->hw.mac.type) {
	case e1000_82580:
	case e1000_i350:
	case e1000_i354:
	case e1000_i210:
	case e1000_i211:
	case e1000_vfadapt:
	case e1000_vfadapt_i350:
		/* RX entries */
		for (int i = 0; i < adapter->rx_num_queues; i++) {
			u32 index = i >> 1;
			ivar = FUNC3(hw, E1000_IVAR0, index);
			rx_que = &adapter->rx_queues[i];
			if (i & 1) {
				ivar &= 0xFF00FFFF;
				ivar |= (rx_que->msix | E1000_IVAR_VALID) << 16;
			} else {
				ivar &= 0xFFFFFF00;
				ivar |= rx_que->msix | E1000_IVAR_VALID;
			}
			FUNC5(hw, E1000_IVAR0, index, ivar);
		}
		/* TX entries */
		for (int i = 0; i < adapter->tx_num_queues; i++) {
			u32 index = i >> 1;
			ivar = FUNC3(hw, E1000_IVAR0, index);
			tx_que = &adapter->tx_queues[i];
			if (i & 1) {
				ivar &= 0x00FFFFFF;
				ivar |= (tx_que->msix | E1000_IVAR_VALID) << 24;
			} else {
				ivar &= 0xFFFF00FF;
				ivar |= (tx_que->msix | E1000_IVAR_VALID) << 8;
			}
			FUNC5(hw, E1000_IVAR0, index, ivar);
			adapter->que_mask |= tx_que->eims;
		}

		/* And for the link interrupt */
		ivar = (adapter->linkvec | E1000_IVAR_VALID) << 8;
		adapter->link_mask = 1 << adapter->linkvec;
		FUNC4(hw, E1000_IVAR_MISC, ivar);
		break;
	case e1000_82576:
		/* RX entries */
		for (int i = 0; i < adapter->rx_num_queues; i++) {
			u32 index = i & 0x7; /* Each IVAR has two entries */
			ivar = FUNC3(hw, E1000_IVAR0, index);
			rx_que = &adapter->rx_queues[i];
			if (i < 8) {
				ivar &= 0xFFFFFF00;
				ivar |= rx_que->msix | E1000_IVAR_VALID;
			} else {
				ivar &= 0xFF00FFFF;
				ivar |= (rx_que->msix | E1000_IVAR_VALID) << 16;
			}
			FUNC5(hw, E1000_IVAR0, index, ivar);
			adapter->que_mask |= rx_que->eims;
		}
		/* TX entries */
		for (int i = 0; i < adapter->tx_num_queues; i++) {
			u32 index = i & 0x7; /* Each IVAR has two entries */
			ivar = FUNC3(hw, E1000_IVAR0, index);
			tx_que = &adapter->tx_queues[i];
			if (i < 8) {
				ivar &= 0xFFFF00FF;
				ivar |= (tx_que->msix | E1000_IVAR_VALID) << 8;
			} else {
				ivar &= 0x00FFFFFF;
				ivar |= (tx_que->msix | E1000_IVAR_VALID) << 24;
			}
			FUNC5(hw, E1000_IVAR0, index, ivar);
			adapter->que_mask |= tx_que->eims;
		}

		/* And for the link interrupt */
		ivar = (adapter->linkvec | E1000_IVAR_VALID) << 8;
		adapter->link_mask = 1 << adapter->linkvec;
		FUNC4(hw, E1000_IVAR_MISC, ivar);
		break;

	case e1000_82575:
		/* enable MSI-X support*/
		tmp = FUNC2(hw, E1000_CTRL_EXT);
		tmp |= E1000_CTRL_EXT_PBA_CLR;
		/* Auto-Mask interrupts upon ICR read. */
		tmp |= E1000_CTRL_EXT_EIAME;
		tmp |= E1000_CTRL_EXT_IRCA;
		FUNC4(hw, E1000_CTRL_EXT, tmp);

		/* Queues */
		for (int i = 0; i < adapter->rx_num_queues; i++) {
			rx_que = &adapter->rx_queues[i];
			tmp = E1000_EICR_RX_QUEUE0 << i;
			tmp |= E1000_EICR_TX_QUEUE0 << i;
			rx_que->eims = tmp;
			FUNC5(hw, FUNC1(0),
			    i, rx_que->eims);
			adapter->que_mask |= rx_que->eims;
		}

		/* Link */
		FUNC4(hw, FUNC1(adapter->linkvec),
		    E1000_EIMS_OTHER);
		adapter->link_mask |= E1000_EIMS_OTHER;
	default:
		break;
	}

	/* Set the starting interrupt rate */
	if (em_max_interrupt_rate > 0)
		newitr = (4000000 / em_max_interrupt_rate) & 0x7FFC;

	if (hw->mac.type == e1000_82575)
		newitr |= newitr << 16;
	else
		newitr |= E1000_EITR_CNT_IGNR;

	for (int i = 0; i < adapter->rx_num_queues; i++) {
		rx_que = &adapter->rx_queues[i];
		FUNC4(hw, FUNC0(rx_que->msix), newitr);
	}

	return;
}