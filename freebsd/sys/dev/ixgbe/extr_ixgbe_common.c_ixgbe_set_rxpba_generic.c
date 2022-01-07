
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_pb_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int IXGBE_MAX_PB ;
 int IXGBE_RXPBSIZE (int) ;
 int IXGBE_RXPBSIZE_SHIFT ;
 int IXGBE_TXPBSIZE (int) ;
 int IXGBE_TXPBSIZE_MAX ;
 int IXGBE_TXPBTHRESH (int) ;
 int IXGBE_TXPKT_SIZE_MAX ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;



void ixgbe_set_rxpba_generic(struct ixgbe_hw *hw, int num_pb, u32 headroom,
        int strategy)
{
 u32 pbsize = hw->mac.rx_pb_size;
 int i = 0;
 u32 rxpktsize, txpktsize, txpbthresh;


 pbsize -= headroom;

 if (!num_pb)
  num_pb = 1;




 switch (strategy) {
 case 128:



  rxpktsize = (pbsize * 5) / (num_pb * 4);
  pbsize -= rxpktsize * (num_pb / 2);
  rxpktsize <<= IXGBE_RXPBSIZE_SHIFT;
  for (; i < (num_pb / 2); i++)
   IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(i), rxpktsize);


 case 129:
  rxpktsize = (pbsize / (num_pb - i)) << IXGBE_RXPBSIZE_SHIFT;
  for (; i < num_pb; i++)
   IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(i), rxpktsize);
  break;
 default:
  break;
 }


 txpktsize = IXGBE_TXPBSIZE_MAX / num_pb;
 txpbthresh = (txpktsize / 1024) - IXGBE_TXPKT_SIZE_MAX;
 for (i = 0; i < num_pb; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_TXPBSIZE(i), txpktsize);
  IXGBE_WRITE_REG(hw, IXGBE_TXPBTHRESH(i), txpbthresh);
 }


 for (; i < IXGBE_MAX_PB; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_TXPBSIZE(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_TXPBTHRESH(i), 0);
 }
}
