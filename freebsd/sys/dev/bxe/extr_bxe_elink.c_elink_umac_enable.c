
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct elink_vars {int line_speed; int flow_ctrl; scalar_t__ duplex; int eee_status; int mac_type; } ;
struct elink_params {int port; int* mac_addr; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 scalar_t__ DUPLEX_HALF ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_FLOW_CTRL_RX ;
 int ELINK_FLOW_CTRL_TX ;
 int ELINK_MAC_TYPE_UMAC ;




 int GRCBASE_MISC ;
 int GRCBASE_UMAC0 ;
 int GRCBASE_UMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_CLEAR ;
 int MISC_REGISTERS_RESET_REG_2_SET ;
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ;
 int NIG_REG_EGRESS_EMAC0_PORT ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int SHMEM_EEE_ADV_STATUS_MASK ;
 int UMAC_COMMAND_CONFIG_REG_HD_ENA ;
 int UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE ;
 int UMAC_COMMAND_CONFIG_REG_LOOP_ENA ;
 int UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK ;
 int UMAC_COMMAND_CONFIG_REG_PAD_EN ;
 int UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE ;
 int UMAC_COMMAND_CONFIG_REG_PROMIS_EN ;
 int UMAC_COMMAND_CONFIG_REG_RX_ENA ;
 int UMAC_COMMAND_CONFIG_REG_SW_RESET ;
 int UMAC_COMMAND_CONFIG_REG_TX_ENA ;
 int UMAC_REG_COMMAND_CONFIG ;
 int UMAC_REG_EEE_WAKE_TIMER ;
 int UMAC_REG_MAC_ADDR0 ;
 int UMAC_REG_MAC_ADDR1 ;
 int UMAC_REG_MAXFR ;
 int UMAC_REG_UMAC_EEE_CTRL ;
 int UMAC_UMAC_EEE_CTRL_REG_EEE_EN ;
 int elink_set_xumac_nig (struct elink_params*,int,int) ;

__attribute__((used)) static void elink_umac_enable(struct elink_params *params,
       struct elink_vars *vars, uint8_t lb)
{
 uint32_t val;
 uint32_t umac_base = params->port ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
 struct bxe_softc *sc = params->sc;

 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
        (MISC_REGISTERS_RESET_REG_2_UMAC0 << params->port));
 DELAY(1000 * 1);

 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
        (MISC_REGISTERS_RESET_REG_2_UMAC0 << params->port));

 ELINK_DEBUG_P0(sc, "enabling UMAC\n");


 REG_WR(sc, NIG_REG_EGRESS_EMAC0_PORT + params->port*4, 1);

 val = UMAC_COMMAND_CONFIG_REG_PROMIS_EN |
  UMAC_COMMAND_CONFIG_REG_PAD_EN |
  UMAC_COMMAND_CONFIG_REG_SW_RESET |
  UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK;
 switch (vars->line_speed) {
 case 131:
  val |= (0<<2);
  break;
 case 130:
  val |= (1<<2);
  break;
 case 129:
  val |= (2<<2);
  break;
 case 128:
  val |= (3<<2);
  break;
 default:
  ELINK_DEBUG_P1(sc, "Invalid speed for UMAC %d\n",
          vars->line_speed);
  break;
 }
 if (!(vars->flow_ctrl & ELINK_FLOW_CTRL_TX))
  val |= UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE;

 if (!(vars->flow_ctrl & ELINK_FLOW_CTRL_RX))
  val |= UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE;

 if (vars->duplex == DUPLEX_HALF)
  val |= UMAC_COMMAND_CONFIG_REG_HD_ENA;

 REG_WR(sc, umac_base + UMAC_REG_COMMAND_CONFIG, val);
 DELAY(50);


 if (vars->eee_status & SHMEM_EEE_ADV_STATUS_MASK) {
  ELINK_DEBUG_P0(sc, "configured UMAC for EEE\n");
  REG_WR(sc, umac_base + UMAC_REG_UMAC_EEE_CTRL,
         UMAC_UMAC_EEE_CTRL_REG_EEE_EN);
  REG_WR(sc, umac_base + UMAC_REG_EEE_WAKE_TIMER, 0x11);
 } else {
  REG_WR(sc, umac_base + UMAC_REG_UMAC_EEE_CTRL, 0x0);
 }


 REG_WR(sc, umac_base + UMAC_REG_MAC_ADDR0,
        ((params->mac_addr[2] << 24) |
  (params->mac_addr[3] << 16) |
  (params->mac_addr[4] << 8) |
  (params->mac_addr[5])));
 REG_WR(sc, umac_base + UMAC_REG_MAC_ADDR1,
        ((params->mac_addr[0] << 8) |
  (params->mac_addr[1])));


 val &= ~UMAC_COMMAND_CONFIG_REG_PAD_EN;
 val |= UMAC_COMMAND_CONFIG_REG_TX_ENA |
  UMAC_COMMAND_CONFIG_REG_RX_ENA;
 REG_WR(sc, umac_base + UMAC_REG_COMMAND_CONFIG, val);
 DELAY(50);


 val &= ~UMAC_COMMAND_CONFIG_REG_SW_RESET;


 if (lb)
  val |= UMAC_COMMAND_CONFIG_REG_LOOP_ENA;
 REG_WR(sc, umac_base + UMAC_REG_COMMAND_CONFIG, val);




 REG_WR(sc, umac_base + UMAC_REG_MAXFR, 0x2710);
 elink_set_xumac_nig(params,
       ((vars->flow_ctrl & ELINK_FLOW_CTRL_TX) != 0), 1);
 vars->mac_type = ELINK_MAC_TYPE_UMAC;

}
