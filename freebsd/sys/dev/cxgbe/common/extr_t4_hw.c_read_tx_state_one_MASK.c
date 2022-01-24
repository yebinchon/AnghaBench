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
typedef  int /*<<< orphan*/  uint32_t ;
struct port_tx_state {void* tx_frames; void* rx_pause; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MPS_PORT_STAT_RX_PORT_PAUSE_L ; 
 int /*<<< orphan*/  A_MPS_PORT_STAT_TX_PORT_FRAMES_L ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 void* FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct adapter *sc, int i, struct port_tx_state *tx_state)
{
	uint32_t rx_pause_reg, tx_frames_reg;

	if (FUNC2(sc)) {
		tx_frames_reg = FUNC0(i, A_MPS_PORT_STAT_TX_PORT_FRAMES_L);
		rx_pause_reg = FUNC0(i, A_MPS_PORT_STAT_RX_PORT_PAUSE_L);
	} else {
		tx_frames_reg = FUNC1(i, A_MPS_PORT_STAT_TX_PORT_FRAMES_L);
		rx_pause_reg = FUNC1(i, A_MPS_PORT_STAT_RX_PORT_PAUSE_L);
	}

	tx_state->rx_pause = FUNC3(sc, rx_pause_reg);
	tx_state->tx_frames = FUNC3(sc, tx_frames_reg);
}