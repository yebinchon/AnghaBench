
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct elink_vars {int dummy; } ;
struct elink_params {int* mac_addr; scalar_t__ port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int BIGMAC2_REGISTER_BMAC_CONTROL ;
 int BIGMAC2_REGISTER_BMAC_XGXS_CONTROL ;
 int BIGMAC2_REGISTER_CNT_MAX_SIZE ;
 int BIGMAC2_REGISTER_RX_LLFC_MSG_FLDS ;
 int BIGMAC2_REGISTER_RX_MAX_SIZE ;
 int BIGMAC2_REGISTER_TX_MAX_SIZE ;
 int BIGMAC2_REGISTER_TX_SOURCE_ADDR ;
 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_ETH_MAX_JUMBO_PACKET_SIZE ;
 int ELINK_ETH_OVREHEAD ;
 int ELINK_STATUS_OK ;
 int NIG_REG_INGRESS_BMAC0_MEM ;
 int NIG_REG_INGRESS_BMAC1_MEM ;
 int REG_WR_DMAE (struct bxe_softc*,int,int*,int) ;
 int elink_update_pfc_bmac2 (struct elink_params*,struct elink_vars*,scalar_t__) ;

__attribute__((used)) static elink_status_t elink_bmac2_enable(struct elink_params *params,
         struct elink_vars *vars,
         uint8_t is_lb)
{
 struct bxe_softc *sc = params->sc;
 uint8_t port = params->port;
 uint32_t bmac_addr = port ? NIG_REG_INGRESS_BMAC1_MEM :
          NIG_REG_INGRESS_BMAC0_MEM;
 uint32_t wb_data[2];

 ELINK_DEBUG_P0(sc, "Enabling BigMAC2\n");

 wb_data[0] = 0;
 wb_data[1] = 0;
 REG_WR_DMAE(sc, bmac_addr + BIGMAC2_REGISTER_BMAC_CONTROL, wb_data, 2);
 DELAY(30);


 wb_data[0] = 0x3c;
 wb_data[1] = 0;
 REG_WR_DMAE(sc, bmac_addr + BIGMAC2_REGISTER_BMAC_XGXS_CONTROL,
      wb_data, 2);

 DELAY(30);


 wb_data[0] = ((params->mac_addr[2] << 24) |
         (params->mac_addr[3] << 16) |
         (params->mac_addr[4] << 8) |
   params->mac_addr[5]);
 wb_data[1] = ((params->mac_addr[0] << 8) |
   params->mac_addr[1]);
 REG_WR_DMAE(sc, bmac_addr + BIGMAC2_REGISTER_TX_SOURCE_ADDR,
      wb_data, 2);

 DELAY(30);


 wb_data[0] = 0x1000200;
 wb_data[1] = 0;
 REG_WR_DMAE(sc, bmac_addr + BIGMAC2_REGISTER_RX_LLFC_MSG_FLDS,
      wb_data, 2);
 DELAY(30);


 wb_data[0] = ELINK_ETH_MAX_JUMBO_PACKET_SIZE + ELINK_ETH_OVREHEAD;
 wb_data[1] = 0;
 REG_WR_DMAE(sc, bmac_addr + BIGMAC2_REGISTER_RX_MAX_SIZE, wb_data, 2);
 DELAY(30);


 wb_data[0] = ELINK_ETH_MAX_JUMBO_PACKET_SIZE + ELINK_ETH_OVREHEAD;
 wb_data[1] = 0;
 REG_WR_DMAE(sc, bmac_addr + BIGMAC2_REGISTER_TX_MAX_SIZE, wb_data, 2);
 DELAY(30);

 wb_data[0] = ELINK_ETH_MAX_JUMBO_PACKET_SIZE + ELINK_ETH_OVREHEAD - 2;
 wb_data[1] = 0;
 REG_WR_DMAE(sc, bmac_addr + BIGMAC2_REGISTER_CNT_MAX_SIZE, wb_data, 2);
 DELAY(30);
 elink_update_pfc_bmac2(params, vars, is_lb);

 return ELINK_STATUS_OK;
}
