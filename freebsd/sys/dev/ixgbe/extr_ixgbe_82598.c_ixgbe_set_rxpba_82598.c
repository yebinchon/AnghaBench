
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_MAX_PACKET_BUFFERS ;
 int IXGBE_RXPBSIZE (int) ;
 int IXGBE_RXPBSIZE_48KB ;
 int IXGBE_RXPBSIZE_64KB ;
 int IXGBE_RXPBSIZE_80KB ;
 int IXGBE_TXPBSIZE (int) ;
 int IXGBE_TXPBSIZE_40KB ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;


 int UNREFERENCED_1PARAMETER (int ) ;

__attribute__((used)) static void ixgbe_set_rxpba_82598(struct ixgbe_hw *hw, int num_pb,
      u32 headroom, int strategy)
{
 u32 rxpktsize = IXGBE_RXPBSIZE_64KB;
 u8 i = 0;
 UNREFERENCED_1PARAMETER(headroom);

 if (!num_pb)
  return;


 switch (strategy) {
 case 128:

  rxpktsize = IXGBE_RXPBSIZE_80KB;
  for (; i < 4; i++)
   IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(i), rxpktsize);

  rxpktsize = IXGBE_RXPBSIZE_48KB;

 case 129:
 default:

  for (; i < IXGBE_MAX_PACKET_BUFFERS; i++)
   IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(i), rxpktsize);
  break;
 }


 for (i = 0; i < IXGBE_MAX_PACKET_BUFFERS; i++)
  IXGBE_WRITE_REG(hw, IXGBE_TXPBSIZE(i), IXGBE_TXPBSIZE_40KB);
}
