
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct elink_vars {int phy_flags; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 scalar_t__ BIGMAC2_REGISTER_RX_LSS_STAT ;
 scalar_t__ BIGMAC_REGISTER_RX_LSS_STATUS ;
 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int ELINK_STATUS_OK ;
 scalar_t__ GRCBASE_XMAC0 ;
 scalar_t__ GRCBASE_XMAC1 ;
 int LINK_STATUS_NONE ;
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 scalar_t__ MISC_REG_RESET_REG_2 ;
 scalar_t__ NIG_REG_EGRESS_EMAC0_PORT ;
 scalar_t__ NIG_REG_INGRESS_BMAC0_MEM ;
 scalar_t__ NIG_REG_INGRESS_BMAC1_MEM ;
 int PHY_HALF_OPEN_CONN_FLAG ;
 int PHY_PHYSICAL_LINK_FLAG ;
 int REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_RD_DMAE (struct bxe_softc*,scalar_t__,scalar_t__*,int) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS ;
 int XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS ;
 scalar_t__ XMAC_REG_CLEAR_RX_LSS_STATUS ;
 scalar_t__ XMAC_REG_RX_LSS_STATUS ;
 int elink_analyze_link_error (struct elink_params*,struct elink_vars*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static
elink_status_t elink_check_half_open_conn(struct elink_params *params,
    struct elink_vars *vars,
    uint8_t notify)
{
 struct bxe_softc *sc = params->sc;
 uint32_t lss_status = 0;
 uint32_t mac_base;

 if (((vars->phy_flags & PHY_PHYSICAL_LINK_FLAG) == 0) ||
     (REG_RD(sc, NIG_REG_EGRESS_EMAC0_PORT + params->port*4)))
  return ELINK_STATUS_OK;

 if (CHIP_IS_E3(sc) &&
     (REG_RD(sc, MISC_REG_RESET_REG_2) &
       (MISC_REGISTERS_RESET_REG_2_XMAC))) {





  mac_base = (params->port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;


  REG_WR(sc, mac_base + XMAC_REG_CLEAR_RX_LSS_STATUS, 0);
  REG_WR(sc, mac_base + XMAC_REG_CLEAR_RX_LSS_STATUS,
         XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS |
         XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS);
  if (REG_RD(sc, mac_base + XMAC_REG_RX_LSS_STATUS))
   lss_status = 1;

  elink_analyze_link_error(params, vars, lss_status,
      PHY_HALF_OPEN_CONN_FLAG,
      LINK_STATUS_NONE, notify);
 } else if (REG_RD(sc, MISC_REG_RESET_REG_2) &
     (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << params->port)) {

  uint32_t lss_status_reg;
  uint32_t wb_data[2];
  mac_base = params->port ? NIG_REG_INGRESS_BMAC1_MEM :
   NIG_REG_INGRESS_BMAC0_MEM;

  if (CHIP_IS_E2(sc))
   lss_status_reg = BIGMAC2_REGISTER_RX_LSS_STAT;
  else
   lss_status_reg = BIGMAC_REGISTER_RX_LSS_STATUS;

  REG_RD_DMAE(sc, mac_base + lss_status_reg, wb_data, 2);
  lss_status = (wb_data[0] > 0);

  elink_analyze_link_error(params, vars, lss_status,
      PHY_HALF_OPEN_CONN_FLAG,
      LINK_STATUS_NONE, notify);
 }
 return ELINK_STATUS_OK;
}
