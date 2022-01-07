
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct al_eth_adapter {int hal_adapter; } ;


 int AL_ETH_FSM_DATA_DEFAULT_Q ;
 int AL_ETH_FSM_DATA_DEFAULT_UDMA ;
 int AL_ETH_FSM_DATA_HASH_SEL ;
 int AL_ETH_FSM_DATA_OUTER_2_TUPLE ;
 int AL_ETH_FSM_DATA_OUTER_4_TUPLE ;






 int AL_ETH_FSM_ENTRY_OUTER (int) ;
 int AL_ETH_RX_FSM_TABLE_SIZE ;
 int al_eth_fsm_table_set (int *,int,int) ;

__attribute__((used)) static void
al_eth_fsm_table_init(struct al_eth_adapter *adapter)
{
 uint32_t val;
 int i;

 for (i = 0; i < AL_ETH_RX_FSM_TABLE_SIZE; i++) {
  uint8_t outer_type = AL_ETH_FSM_ENTRY_OUTER(i);
  switch (outer_type) {
  case 132:
  case 131:
  case 129:
  case 128:
   val = AL_ETH_FSM_DATA_OUTER_4_TUPLE |
       AL_ETH_FSM_DATA_HASH_SEL;
   break;
  case 130:
  case 133:
   val = AL_ETH_FSM_DATA_OUTER_2_TUPLE |
       AL_ETH_FSM_DATA_HASH_SEL;
   break;
  default:
   val = AL_ETH_FSM_DATA_DEFAULT_Q |
       AL_ETH_FSM_DATA_DEFAULT_UDMA;
  }
  al_eth_fsm_table_set(&adapter->hal_adapter, i, val);
 }
}
