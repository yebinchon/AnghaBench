
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct iwm_softc {TYPE_1__* cfg; int sc_hw_rev; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int IWM_APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS ;
 int IWM_APMG_PS_CTRL_REG ;
 int IWM_CSR_HW_IF_CONFIG_REG ;
 int IWM_CSR_HW_IF_CONFIG_REG_BIT_MAC_SI ;
 int IWM_CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI ;
 int IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH ;
 int IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP ;
 int IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH ;
 int IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP ;
 int IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE ;
 int IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_DASH ;
 int IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_STEP ;
 int IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_DASH ;
 int IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_STEP ;
 int IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE ;
 int IWM_CSR_HW_REV_DASH (int ) ;
 int IWM_CSR_HW_REV_STEP (int ) ;
 int IWM_DEBUG_RESET ;
 scalar_t__ IWM_DEVICE_FAMILY_7000 ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,int,int,int) ;
 int IWM_FW_PHY_CFG_RADIO_DASH ;
 int IWM_FW_PHY_CFG_RADIO_DASH_POS ;
 int IWM_FW_PHY_CFG_RADIO_STEP ;
 int IWM_FW_PHY_CFG_RADIO_STEP_POS ;
 int IWM_FW_PHY_CFG_RADIO_TYPE ;
 int IWM_FW_PHY_CFG_RADIO_TYPE_POS ;
 int IWM_WRITE (struct iwm_softc*,int ,int) ;
 int iwm_mvm_get_phy_config (struct iwm_softc*) ;
 int iwm_set_bits_mask_prph (struct iwm_softc*,int ,int ,int ) ;

__attribute__((used)) static void
iwm_mvm_nic_config(struct iwm_softc *sc)
{
 uint8_t radio_cfg_type, radio_cfg_step, radio_cfg_dash;
 uint32_t reg_val = 0;
 uint32_t phy_config = iwm_mvm_get_phy_config(sc);

 radio_cfg_type = (phy_config & IWM_FW_PHY_CFG_RADIO_TYPE) >>
     IWM_FW_PHY_CFG_RADIO_TYPE_POS;
 radio_cfg_step = (phy_config & IWM_FW_PHY_CFG_RADIO_STEP) >>
     IWM_FW_PHY_CFG_RADIO_STEP_POS;
 radio_cfg_dash = (phy_config & IWM_FW_PHY_CFG_RADIO_DASH) >>
     IWM_FW_PHY_CFG_RADIO_DASH_POS;


 reg_val |= IWM_CSR_HW_REV_STEP(sc->sc_hw_rev) <<
     IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_STEP;
 reg_val |= IWM_CSR_HW_REV_DASH(sc->sc_hw_rev) <<
     IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_DASH;


 reg_val |= radio_cfg_type << IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE;
 reg_val |= radio_cfg_step << IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_STEP;
 reg_val |= radio_cfg_dash << IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_DASH;

 IWM_WRITE(sc, IWM_CSR_HW_IF_CONFIG_REG,
     IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH |
     IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP |
     IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP |
     IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH |
     IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE |
     IWM_CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI |
     IWM_CSR_HW_IF_CONFIG_REG_BIT_MAC_SI |
     reg_val);

 IWM_DPRINTF(sc, IWM_DEBUG_RESET,
     "Radio type=0x%x-0x%x-0x%x\n", radio_cfg_type,
     radio_cfg_step, radio_cfg_dash);






 if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000) {
  iwm_set_bits_mask_prph(sc, IWM_APMG_PS_CTRL_REG,
      IWM_APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS,
      ~IWM_APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS);
 }
}
