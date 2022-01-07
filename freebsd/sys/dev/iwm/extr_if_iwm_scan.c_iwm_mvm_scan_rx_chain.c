
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iwm_softc {int dummy; } ;


 int IWM_PHY_RX_CHAIN_DRIVER_FORCE_POS ;
 int IWM_PHY_RX_CHAIN_FORCE_MIMO_SEL_POS ;
 int IWM_PHY_RX_CHAIN_FORCE_SEL_POS ;
 int IWM_PHY_RX_CHAIN_VALID_POS ;
 int htole16 (int) ;
 int iwm_mvm_get_valid_rx_ant (struct iwm_softc*) ;

__attribute__((used)) static uint16_t
iwm_mvm_scan_rx_chain(struct iwm_softc *sc)
{
 uint16_t rx_chain;
 uint8_t rx_ant;

 rx_ant = iwm_mvm_get_valid_rx_ant(sc);
 rx_chain = rx_ant << IWM_PHY_RX_CHAIN_VALID_POS;
 rx_chain |= rx_ant << IWM_PHY_RX_CHAIN_FORCE_MIMO_SEL_POS;
 rx_chain |= rx_ant << IWM_PHY_RX_CHAIN_FORCE_SEL_POS;
 rx_chain |= 0x1 << IWM_PHY_RX_CHAIN_DRIVER_FORCE_POS;
 return htole16(rx_chain);
}
