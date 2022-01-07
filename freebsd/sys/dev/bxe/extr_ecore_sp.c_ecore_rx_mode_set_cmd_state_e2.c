
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct eth_filter_rules_cmd {int state; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ACCEPT_ALL_MULTICAST ;
 int ECORE_ACCEPT_ALL_UNICAST ;
 int ECORE_ACCEPT_ANY_VLAN ;
 int ECORE_ACCEPT_BROADCAST ;
 int ECORE_ACCEPT_MULTICAST ;
 int ECORE_ACCEPT_UNICAST ;
 int ECORE_ACCEPT_UNMATCHED ;
 int ECORE_CPU_TO_LE16 (int) ;
 scalar_t__ ECORE_TEST_BIT (int ,unsigned long*) ;
 int ETH_FILTER_RULES_CMD_ACCEPT_ANY_VLAN ;
 int ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL ;
 int ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL ;
 int ETH_FILTER_RULES_CMD_MCAST_DROP_ALL ;
 int ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL ;
 int ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED ;
 int ETH_FILTER_RULES_CMD_UCAST_DROP_ALL ;

__attribute__((used)) static inline void ecore_rx_mode_set_cmd_state_e2(struct bxe_softc *sc,
    unsigned long *accept_flags,
    struct eth_filter_rules_cmd *cmd,
    bool clear_accept_all)
{
 uint16_t state;


 state = ETH_FILTER_RULES_CMD_UCAST_DROP_ALL |
  ETH_FILTER_RULES_CMD_MCAST_DROP_ALL;

 if (ECORE_TEST_BIT(ECORE_ACCEPT_UNICAST, accept_flags))
  state &= ~ETH_FILTER_RULES_CMD_UCAST_DROP_ALL;

 if (ECORE_TEST_BIT(ECORE_ACCEPT_MULTICAST, accept_flags))
  state &= ~ETH_FILTER_RULES_CMD_MCAST_DROP_ALL;

 if (ECORE_TEST_BIT(ECORE_ACCEPT_ALL_UNICAST, accept_flags)) {
  state &= ~ETH_FILTER_RULES_CMD_UCAST_DROP_ALL;
  state |= ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL;
 }

 if (ECORE_TEST_BIT(ECORE_ACCEPT_ALL_MULTICAST, accept_flags)) {
  state |= ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_MCAST_DROP_ALL;
 }
 if (ECORE_TEST_BIT(ECORE_ACCEPT_BROADCAST, accept_flags))
  state |= ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL;

 if (ECORE_TEST_BIT(ECORE_ACCEPT_UNMATCHED, accept_flags)) {
  state &= ~ETH_FILTER_RULES_CMD_UCAST_DROP_ALL;
  state |= ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED;
 }
 if (ECORE_TEST_BIT(ECORE_ACCEPT_ANY_VLAN, accept_flags))
  state |= ETH_FILTER_RULES_CMD_ACCEPT_ANY_VLAN;


 if (clear_accept_all) {
  state &= ~ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED;
 }

 cmd->state = ECORE_CPU_TO_LE16(state);
}
