
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct port_tx_state {void* tx_frames; void* rx_pause; } ;
struct adapter {int dummy; } ;


 int A_MPS_PORT_STAT_RX_PORT_PAUSE_L ;
 int A_MPS_PORT_STAT_TX_PORT_FRAMES_L ;
 int PORT_REG (int,int ) ;
 int T5_PORT_REG (int,int ) ;
 scalar_t__ is_t4 (struct adapter*) ;
 void* t4_read_reg64 (struct adapter*,int ) ;

__attribute__((used)) static void
read_tx_state_one(struct adapter *sc, int i, struct port_tx_state *tx_state)
{
 uint32_t rx_pause_reg, tx_frames_reg;

 if (is_t4(sc)) {
  tx_frames_reg = PORT_REG(i, A_MPS_PORT_STAT_TX_PORT_FRAMES_L);
  rx_pause_reg = PORT_REG(i, A_MPS_PORT_STAT_RX_PORT_PAUSE_L);
 } else {
  tx_frames_reg = T5_PORT_REG(i, A_MPS_PORT_STAT_TX_PORT_FRAMES_L);
  rx_pause_reg = T5_PORT_REG(i, A_MPS_PORT_STAT_RX_PORT_PAUSE_L);
 }

 tx_state->rx_pause = t4_read_reg64(sc, rx_pause_reg);
 tx_state->tx_frames = t4_read_reg64(sc, tx_frames_reg);
}
