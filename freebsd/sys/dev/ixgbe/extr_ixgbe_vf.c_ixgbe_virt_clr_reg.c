
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_DCA_RXCTRL_DATA_WRO_EN ;
 int IXGBE_DCA_RXCTRL_DESC_RRO_EN ;
 int IXGBE_DCA_RXCTRL_HEAD_WRO_EN ;
 int IXGBE_DCA_TXCTRL_DATA_RRO_EN ;
 int IXGBE_DCA_TXCTRL_DESC_RRO_EN ;
 int IXGBE_DCA_TXCTRL_DESC_WRO_EN ;
 int IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT ;
 int IXGBE_SRRCTL_BSIZEPKT_SHIFT ;
 int IXGBE_VFDCA_RXCTRL (int) ;
 int IXGBE_VFDCA_TXCTRL (int) ;
 int IXGBE_VFPSRTYPE ;
 int IXGBE_VFRDH (int) ;
 int IXGBE_VFRDT (int) ;
 int IXGBE_VFRXDCTL (int) ;
 int IXGBE_VFSRRCTL (int) ;
 int IXGBE_VFTDH (int) ;
 int IXGBE_VFTDT (int) ;
 int IXGBE_VFTDWBAH (int) ;
 int IXGBE_VFTDWBAL (int) ;
 int IXGBE_VFTXDCTL (int) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbe_virt_clr_reg(struct ixgbe_hw *hw)
{
 int i;
 u32 vfsrrctl;
 u32 vfdca_rxctrl;
 u32 vfdca_txctrl;


 vfsrrctl = 0x100 << IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT;
 vfsrrctl |= 0x800 >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;


 vfdca_rxctrl = IXGBE_DCA_RXCTRL_DESC_RRO_EN |
         IXGBE_DCA_RXCTRL_DATA_WRO_EN |
         IXGBE_DCA_RXCTRL_HEAD_WRO_EN;


 vfdca_txctrl = IXGBE_DCA_TXCTRL_DESC_RRO_EN |
         IXGBE_DCA_TXCTRL_DESC_WRO_EN |
         IXGBE_DCA_TXCTRL_DATA_RRO_EN;

 IXGBE_WRITE_REG(hw, IXGBE_VFPSRTYPE, 0);

 for (i = 0; i < 7; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_VFRDH(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFRDT(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFRXDCTL(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFSRRCTL(i), vfsrrctl);
  IXGBE_WRITE_REG(hw, IXGBE_VFTDH(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFTDT(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFTDWBAH(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFTDWBAL(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFDCA_RXCTRL(i), vfdca_rxctrl);
  IXGBE_WRITE_REG(hw, IXGBE_VFDCA_TXCTRL(i), vfdca_txctrl);
 }

 IXGBE_WRITE_FLUSH(hw);
}
