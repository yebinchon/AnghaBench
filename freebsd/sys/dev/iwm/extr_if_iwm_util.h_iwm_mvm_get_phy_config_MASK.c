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
typedef  int uint32_t ;
struct TYPE_2__ {int phy_config; } ;
struct iwm_softc {TYPE_1__ sc_fw; } ;

/* Variables and functions */
 int IWM_FW_PHY_CFG_RX_CHAIN ; 
 int IWM_FW_PHY_CFG_RX_CHAIN_POS ; 
 int IWM_FW_PHY_CFG_TX_CHAIN ; 
 int IWM_FW_PHY_CFG_TX_CHAIN_POS ; 
 int FUNC0 (struct iwm_softc*) ; 
 int FUNC1 (struct iwm_softc*) ; 

__attribute__((used)) static inline uint32_t
FUNC2(struct iwm_softc *sc)
{
	uint32_t phy_config = ~(IWM_FW_PHY_CFG_TX_CHAIN |
				IWM_FW_PHY_CFG_RX_CHAIN);
	uint32_t valid_rx_ant = FUNC0(sc);
	uint32_t valid_tx_ant = FUNC1(sc);

	phy_config |= valid_tx_ant << IWM_FW_PHY_CFG_TX_CHAIN_POS |
		      valid_rx_ant << IWM_FW_PHY_CFG_RX_CHAIN_POS;

	return sc->sc_fw.phy_config & phy_config;
}