
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_6__ {TYPE_2__ asq; TYPE_1__ arq; } ;
struct i40e_hw {TYPE_3__ aq; } ;
struct iavf_sc {int init_state; int dev; struct i40e_hw hw; } ;
typedef int device_t ;


 int EIO ;
 int I40E_VF_ARQLEN1_ARQCRIT_MASK ;
 int I40E_VF_ARQLEN1_ARQOVFL_MASK ;
 int I40E_VF_ARQLEN1_ARQVFE_MASK ;
 int I40E_VF_ATQLEN1_ATQCRIT_MASK ;
 int I40E_VF_ATQLEN1_ATQOVFL_MASK ;
 int I40E_VF_ATQLEN1_ATQVFE_MASK ;
 int IAVF_RESET_REQUIRED ;
 int device_printf (int ,char*) ;
 int iavf_request_reset (struct iavf_sc*) ;
 int iavf_stop (struct iavf_sc*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static int
iavf_check_aq_errors(struct iavf_sc *sc)
{
 struct i40e_hw *hw = &sc->hw;
 device_t dev = sc->dev;
 u32 reg, oldreg;
 u8 aq_error = 0;


 oldreg = reg = rd32(hw, hw->aq.arq.len);
 if (reg & I40E_VF_ARQLEN1_ARQVFE_MASK) {
  device_printf(dev, "ARQ VF Error detected\n");
  reg &= ~I40E_VF_ARQLEN1_ARQVFE_MASK;
  aq_error = 1;
 }
 if (reg & I40E_VF_ARQLEN1_ARQOVFL_MASK) {
  device_printf(dev, "ARQ Overflow Error detected\n");
  reg &= ~I40E_VF_ARQLEN1_ARQOVFL_MASK;
  aq_error = 1;
 }
 if (reg & I40E_VF_ARQLEN1_ARQCRIT_MASK) {
  device_printf(dev, "ARQ Critical Error detected\n");
  reg &= ~I40E_VF_ARQLEN1_ARQCRIT_MASK;
  aq_error = 1;
 }
 if (oldreg != reg)
  wr32(hw, hw->aq.arq.len, reg);

 oldreg = reg = rd32(hw, hw->aq.asq.len);
 if (reg & I40E_VF_ATQLEN1_ATQVFE_MASK) {
  device_printf(dev, "ASQ VF Error detected\n");
  reg &= ~I40E_VF_ATQLEN1_ATQVFE_MASK;
  aq_error = 1;
 }
 if (reg & I40E_VF_ATQLEN1_ATQOVFL_MASK) {
  device_printf(dev, "ASQ Overflow Error detected\n");
  reg &= ~I40E_VF_ATQLEN1_ATQOVFL_MASK;
  aq_error = 1;
 }
 if (reg & I40E_VF_ATQLEN1_ATQCRIT_MASK) {
  device_printf(dev, "ASQ Critical Error detected\n");
  reg &= ~I40E_VF_ATQLEN1_ATQCRIT_MASK;
  aq_error = 1;
 }
 if (oldreg != reg)
  wr32(hw, hw->aq.asq.len, reg);

 if (aq_error) {
  device_printf(dev, "WARNING: Stopping VF!\n");




  sc->init_state = IAVF_RESET_REQUIRED;
  iavf_stop(sc);
  iavf_request_reset(sc);
 }

 return (aq_error ? EIO : 0);
}
