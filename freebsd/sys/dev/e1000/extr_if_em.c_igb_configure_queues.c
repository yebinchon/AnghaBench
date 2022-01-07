
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct em_tx_queue {int msix; int eims; } ;
struct em_rx_queue {int msix; int eims; } ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct adapter {int rx_num_queues; int tx_num_queues; int que_mask; int linkvec; int link_mask; struct em_rx_queue* rx_queues; struct em_tx_queue* tx_queues; struct e1000_hw hw; } ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_EIAME ;
 int E1000_CTRL_EXT_IRCA ;
 int E1000_CTRL_EXT_PBA_CLR ;
 int E1000_EICR_RX_QUEUE0 ;
 int E1000_EICR_TX_QUEUE0 ;
 int E1000_EIMS_OTHER ;
 int E1000_EITR (int) ;
 int E1000_EITR_CNT_IGNR ;
 int E1000_GPIE ;
 int E1000_GPIE_EIAME ;
 int E1000_GPIE_MSIX_MODE ;
 int E1000_GPIE_NSICR ;
 int E1000_GPIE_PBA ;
 int E1000_IVAR0 ;
 int E1000_IVAR_MISC ;
 int E1000_IVAR_VALID ;
 int E1000_MSIXBM (int) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_READ_REG_ARRAY (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int) ;
 int em_max_interrupt_rate ;

__attribute__((used)) static void
igb_configure_queues(struct adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct em_rx_queue *rx_que;
 struct em_tx_queue *tx_que;
 u32 tmp, ivar = 0, newitr = 0;


 if (adapter->hw.mac.type != 136)
  E1000_WRITE_REG(hw, E1000_GPIE,
      E1000_GPIE_MSIX_MODE | E1000_GPIE_EIAME |
      E1000_GPIE_PBA | E1000_GPIE_NSICR);


 switch (adapter->hw.mac.type) {
 case 134:
 case 131:
 case 130:
 case 133:
 case 132:
 case 129:
 case 128:

  for (int i = 0; i < adapter->rx_num_queues; i++) {
   u32 index = i >> 1;
   ivar = E1000_READ_REG_ARRAY(hw, E1000_IVAR0, index);
   rx_que = &adapter->rx_queues[i];
   if (i & 1) {
    ivar &= 0xFF00FFFF;
    ivar |= (rx_que->msix | E1000_IVAR_VALID) << 16;
   } else {
    ivar &= 0xFFFFFF00;
    ivar |= rx_que->msix | E1000_IVAR_VALID;
   }
   E1000_WRITE_REG_ARRAY(hw, E1000_IVAR0, index, ivar);
  }

  for (int i = 0; i < adapter->tx_num_queues; i++) {
   u32 index = i >> 1;
   ivar = E1000_READ_REG_ARRAY(hw, E1000_IVAR0, index);
   tx_que = &adapter->tx_queues[i];
   if (i & 1) {
    ivar &= 0x00FFFFFF;
    ivar |= (tx_que->msix | E1000_IVAR_VALID) << 24;
   } else {
    ivar &= 0xFFFF00FF;
    ivar |= (tx_que->msix | E1000_IVAR_VALID) << 8;
   }
   E1000_WRITE_REG_ARRAY(hw, E1000_IVAR0, index, ivar);
   adapter->que_mask |= tx_que->eims;
  }


  ivar = (adapter->linkvec | E1000_IVAR_VALID) << 8;
  adapter->link_mask = 1 << adapter->linkvec;
  E1000_WRITE_REG(hw, E1000_IVAR_MISC, ivar);
  break;
 case 135:

  for (int i = 0; i < adapter->rx_num_queues; i++) {
   u32 index = i & 0x7;
   ivar = E1000_READ_REG_ARRAY(hw, E1000_IVAR0, index);
   rx_que = &adapter->rx_queues[i];
   if (i < 8) {
    ivar &= 0xFFFFFF00;
    ivar |= rx_que->msix | E1000_IVAR_VALID;
   } else {
    ivar &= 0xFF00FFFF;
    ivar |= (rx_que->msix | E1000_IVAR_VALID) << 16;
   }
   E1000_WRITE_REG_ARRAY(hw, E1000_IVAR0, index, ivar);
   adapter->que_mask |= rx_que->eims;
  }

  for (int i = 0; i < adapter->tx_num_queues; i++) {
   u32 index = i & 0x7;
   ivar = E1000_READ_REG_ARRAY(hw, E1000_IVAR0, index);
   tx_que = &adapter->tx_queues[i];
   if (i < 8) {
    ivar &= 0xFFFF00FF;
    ivar |= (tx_que->msix | E1000_IVAR_VALID) << 8;
   } else {
    ivar &= 0x00FFFFFF;
    ivar |= (tx_que->msix | E1000_IVAR_VALID) << 24;
   }
   E1000_WRITE_REG_ARRAY(hw, E1000_IVAR0, index, ivar);
   adapter->que_mask |= tx_que->eims;
  }


  ivar = (adapter->linkvec | E1000_IVAR_VALID) << 8;
  adapter->link_mask = 1 << adapter->linkvec;
  E1000_WRITE_REG(hw, E1000_IVAR_MISC, ivar);
  break;

 case 136:

  tmp = E1000_READ_REG(hw, E1000_CTRL_EXT);
  tmp |= E1000_CTRL_EXT_PBA_CLR;

  tmp |= E1000_CTRL_EXT_EIAME;
  tmp |= E1000_CTRL_EXT_IRCA;
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, tmp);


  for (int i = 0; i < adapter->rx_num_queues; i++) {
   rx_que = &adapter->rx_queues[i];
   tmp = E1000_EICR_RX_QUEUE0 << i;
   tmp |= E1000_EICR_TX_QUEUE0 << i;
   rx_que->eims = tmp;
   E1000_WRITE_REG_ARRAY(hw, E1000_MSIXBM(0),
       i, rx_que->eims);
   adapter->que_mask |= rx_que->eims;
  }


  E1000_WRITE_REG(hw, E1000_MSIXBM(adapter->linkvec),
      E1000_EIMS_OTHER);
  adapter->link_mask |= E1000_EIMS_OTHER;
 default:
  break;
 }


 if (em_max_interrupt_rate > 0)
  newitr = (4000000 / em_max_interrupt_rate) & 0x7FFC;

 if (hw->mac.type == 136)
  newitr |= newitr << 16;
 else
  newitr |= E1000_EITR_CNT_IGNR;

 for (int i = 0; i < adapter->rx_num_queues; i++) {
  rx_que = &adapter->rx_queues[i];
  E1000_WRITE_REG(hw, E1000_EITR(rx_que->msix), newitr);
 }

 return;
}
