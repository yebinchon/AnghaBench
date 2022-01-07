
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct elink_vars {int eee_status; scalar_t__ phy_flags; scalar_t__ link_up; scalar_t__ link_status; } ;
struct elink_params {int port; int feature_config_flags; int num_phys; TYPE_1__* phy; int chip_id; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;
struct TYPE_4__ {int flags; int (* link_reset ) (TYPE_1__*,struct elink_params*) ;} ;


 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int CHIP_REV_IS_FPGA (struct bxe_softc*) ;
 int CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DELAY (int) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_EXT_PHY1 ;
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC ;
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC ;
 int ELINK_FLAGS_REARM_LATCH_SIGNAL ;
 size_t ELINK_INT_PHY ;
 int ELINK_LED_MODE_OFF ;
 int ELINK_NIG_LATCH_BC_ENABLE_MI_INT ;
 int ELINK_NIG_MASK_MI_INT ;
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ;
 int ELINK_NIG_MASK_XGXS0_LINK10G ;
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ;
 int ELINK_STATUS_OK ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ GRCBASE_XMAC0 ;
 scalar_t__ GRCBASE_XMAC1 ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ;
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 int MISC_REG_RESET_REG_2 ;
 scalar_t__ NIG_REG_BMAC0_IN_EN ;
 scalar_t__ NIG_REG_BMAC0_OUT_EN ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 scalar_t__ NIG_REG_EGRESS_EMAC0_OUT_EN ;
 scalar_t__ NIG_REG_EMAC0_IN_EN ;
 scalar_t__ NIG_REG_LATCH_BC_0 ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 scalar_t__ NIG_REG_NIG_EMAC0_EN ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int SHMEM_EEE_ACTIVE_BIT ;
 int SHMEM_EEE_LP_ADV_STATUS_MASK ;
 int XMAC_CTRL_REG_SOFT_RESET ;
 scalar_t__ XMAC_REG_CTRL ;
 int elink_bits_dis (struct bxe_softc*,scalar_t__,int) ;
 int elink_chng_link_count (struct elink_params*,int) ;
 int elink_rearm_latch_signal (struct bxe_softc*,int,int ) ;
 int elink_set_aer_mmd (struct elink_params*,TYPE_1__*) ;
 int elink_set_bmac_rx (struct bxe_softc*,int ,int,int ) ;
 int elink_set_led (struct elink_params*,struct elink_vars*,int ,int ) ;
 int elink_set_mdio_emac_per_phy (struct bxe_softc*,struct elink_params*) ;
 int elink_set_umac_rxtx (struct elink_params*,int ) ;
 int elink_set_xmac_rxtx (struct elink_params*,int ) ;
 int elink_set_xumac_nig (struct elink_params*,int ,int ) ;
 int elink_update_mng (struct elink_params*,scalar_t__) ;
 int elink_update_mng_eee (struct elink_params*,int) ;
 int stub1 (TYPE_1__*,struct elink_params*) ;
 int stub2 (TYPE_1__*,struct elink_params*) ;

elink_status_t elink_link_reset(struct elink_params *params, struct elink_vars *vars,
       uint8_t reset_ext_phy)
{
 struct bxe_softc *sc = params->sc;
 uint8_t phy_index, port = params->port, clear_latch_ind = 0;
 ELINK_DEBUG_P1(sc, "Resetting the link of port %d\n", port);

 vars->link_status = 0;
 elink_chng_link_count(params, 1);
 elink_update_mng(params, vars->link_status);
 vars->eee_status &= ~(SHMEM_EEE_LP_ADV_STATUS_MASK |
         SHMEM_EEE_ACTIVE_BIT);
 elink_update_mng_eee(params, vars->eee_status);
 elink_bits_dis(sc, NIG_REG_MASK_INTERRUPT_PORT0 + port*4,
         (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
   ELINK_NIG_MASK_XGXS0_LINK10G |
   ELINK_NIG_MASK_SERDES0_LINK_STATUS |
   ELINK_NIG_MASK_MI_INT));


 REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + port*4, 1);


 if (!CHIP_IS_E3(sc)) {
  REG_WR(sc, NIG_REG_BMAC0_OUT_EN + port*4, 0);
  REG_WR(sc, NIG_REG_EGRESS_EMAC0_OUT_EN + port*4, 0);
 }






  if (!CHIP_IS_E3(sc))
   elink_set_bmac_rx(sc, params->chip_id, port, 0);





  if (CHIP_IS_E3(sc) &&
  !CHIP_REV_IS_FPGA(sc)) {
   elink_set_xmac_rxtx(params, 0);
   elink_set_umac_rxtx(params, 0);
  }

 if (!CHIP_IS_E3(sc))
  REG_WR(sc, NIG_REG_NIG_EMAC0_EN + port*4, 0);

 DELAY(1000 * 10);




 elink_set_mdio_emac_per_phy(sc, params);
 elink_set_led(params, vars, ELINK_LED_MODE_OFF, 0);

 if (reset_ext_phy && (!CHIP_REV_IS_SLOW(sc))) {
  for (phy_index = ELINK_EXT_PHY1; phy_index < params->num_phys;
        phy_index++) {
   if (params->phy[phy_index].link_reset) {
    elink_set_aer_mmd(params,
        &params->phy[phy_index]);
    params->phy[phy_index].link_reset(
     &params->phy[phy_index],
     params);
   }
   if (params->phy[phy_index].flags &
       ELINK_FLAGS_REARM_LATCH_SIGNAL)
    clear_latch_ind = 1;
  }
 }

 if (clear_latch_ind) {

  elink_rearm_latch_signal(sc, port, 0);
  elink_bits_dis(sc, NIG_REG_LATCH_BC_0 + port*4,
          1 << ELINK_NIG_LATCH_BC_ENABLE_MI_INT);
 }



 if (params->phy[ELINK_INT_PHY].link_reset)
  params->phy[ELINK_INT_PHY].link_reset(
   &params->phy[ELINK_INT_PHY], params);


 if (!CHIP_IS_E3(sc)) {

  REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
         (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port));
  REG_WR(sc, NIG_REG_BMAC0_IN_EN + port*4, 0);
  REG_WR(sc, NIG_REG_EMAC0_IN_EN + port*4, 0);
 } else {
  uint32_t xmac_base = (params->port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
  elink_set_xumac_nig(params, 0, 0);
  if (REG_RD(sc, MISC_REG_RESET_REG_2) &
      MISC_REGISTERS_RESET_REG_2_XMAC)
   REG_WR(sc, xmac_base + XMAC_REG_CTRL,
          XMAC_CTRL_REG_SOFT_RESET);
 }
 vars->link_up = 0;
 vars->phy_flags = 0;
 return ELINK_STATUS_OK;
}
