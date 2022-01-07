
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_PHYPDEN ;
 int E1000_CTRL_EXT_SDLPE ;
 int E1000_CTRL_PHY_RST ;
 int E1000_EEARBC_I210 ;
 int E1000_ERR_PHY ;
 int E1000_INVM_AUTOLOAD ;
 int E1000_INVM_DEFAULT_AL ;
 int E1000_INVM_PLL_WO_VAL ;
 int E1000_MAX_PLL_TRIES ;
 int E1000_MDICNFG ;
 int E1000_MDICNFG_EXT_MDIO ;
 int E1000_PCI_PMCSR ;
 int E1000_PCI_PMCSR_D3 ;
 int E1000_PHY_PLL_FREQ_PAGE ;
 int E1000_PHY_PLL_FREQ_REG ;
 int E1000_PHY_PLL_UNCONF ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int E1000_WUC ;
 int e1000_read_invm_word_i210 (struct e1000_hw*,int,int*) ;
 int e1000_read_pci_cfg (struct e1000_hw*,int ,int*) ;
 int e1000_read_phy_reg_gs40g (struct e1000_hw*,int,int*) ;
 int e1000_write_pci_cfg (struct e1000_hw*,int ,int*) ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_pll_workaround_i210(struct e1000_hw *hw)
{
 s32 ret_val;
 u32 wuc, mdicnfg, ctrl, ctrl_ext, reg_val;
 u16 nvm_word, phy_word, pci_word, tmp_nvm;
 int i;


 wuc = E1000_READ_REG(hw, E1000_WUC);
 mdicnfg = E1000_READ_REG(hw, E1000_MDICNFG);
 reg_val = mdicnfg & ~E1000_MDICNFG_EXT_MDIO;
 E1000_WRITE_REG(hw, E1000_MDICNFG, reg_val);


 ret_val = e1000_read_invm_word_i210(hw, E1000_INVM_AUTOLOAD,
         &nvm_word);
 if (ret_val != E1000_SUCCESS)
  nvm_word = E1000_INVM_DEFAULT_AL;
 tmp_nvm = nvm_word | E1000_INVM_PLL_WO_VAL;
 for (i = 0; i < E1000_MAX_PLL_TRIES; i++) {

  e1000_read_phy_reg_gs40g(hw, (E1000_PHY_PLL_FREQ_PAGE |
      E1000_PHY_PLL_FREQ_REG), &phy_word);
  if ((phy_word & E1000_PHY_PLL_UNCONF)
      != E1000_PHY_PLL_UNCONF) {
   ret_val = E1000_SUCCESS;
   break;
  } else {
   ret_val = -E1000_ERR_PHY;
  }

  ctrl = E1000_READ_REG(hw, E1000_CTRL);
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl|E1000_CTRL_PHY_RST);

  ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);
  ctrl_ext |= (E1000_CTRL_EXT_PHYPDEN | E1000_CTRL_EXT_SDLPE);
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);

  E1000_WRITE_REG(hw, E1000_WUC, 0);
  reg_val = (E1000_INVM_AUTOLOAD << 4) | (tmp_nvm << 16);
  E1000_WRITE_REG(hw, E1000_EEARBC_I210, reg_val);

  e1000_read_pci_cfg(hw, E1000_PCI_PMCSR, &pci_word);
  pci_word |= E1000_PCI_PMCSR_D3;
  e1000_write_pci_cfg(hw, E1000_PCI_PMCSR, &pci_word);
  msec_delay(1);
  pci_word &= ~E1000_PCI_PMCSR_D3;
  e1000_write_pci_cfg(hw, E1000_PCI_PMCSR, &pci_word);
  reg_val = (E1000_INVM_AUTOLOAD << 4) | (nvm_word << 16);
  E1000_WRITE_REG(hw, E1000_EEARBC_I210, reg_val);


  E1000_WRITE_REG(hw, E1000_WUC, wuc);
 }

 E1000_WRITE_REG(hw, E1000_MDICNFG, mdicnfg);
 return ret_val;
}
