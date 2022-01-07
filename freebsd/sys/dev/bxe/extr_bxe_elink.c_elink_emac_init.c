
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct elink_vars {int dummy; } ;
struct elink_params {int port; int* mac_addr; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int EMAC_MODE_RESET ;
 int EMAC_REG_EMAC_MAC_MATCH ;
 int EMAC_REG_EMAC_MODE ;
 int GRCBASE_EMAC0 ;
 int GRCBASE_EMAC1 ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ;
 int MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_SET ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int elink_cb_reg_write (struct bxe_softc*,int,int) ;
 int elink_set_mdio_emac_per_phy (struct bxe_softc*,struct elink_params*) ;

__attribute__((used)) static void elink_emac_init(struct elink_params *params,
       struct elink_vars *vars)
{

 struct bxe_softc *sc = params->sc;
 uint8_t port = params->port;
 uint32_t emac_base = port ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
 uint32_t val;
 uint16_t timeout;

 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
        (MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE << port));
 DELAY(5);
 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
        (MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE << port));



 val = REG_RD(sc, emac_base + EMAC_REG_EMAC_MODE);
 elink_cb_reg_write(sc, emac_base + EMAC_REG_EMAC_MODE, (val | EMAC_MODE_RESET));

 timeout = 200;
 do {
  val = REG_RD(sc, emac_base + EMAC_REG_EMAC_MODE);
  ELINK_DEBUG_P1(sc, "EMAC reset reg is %u\n", val);
  if (!timeout) {
   ELINK_DEBUG_P0(sc, "EMAC timeout!\n");
   return;
  }
  timeout--;
 } while (val & EMAC_MODE_RESET);

 elink_set_mdio_emac_per_phy(sc, params);

 val = ((params->mac_addr[0] << 8) |
  params->mac_addr[1]);
 elink_cb_reg_write(sc, emac_base + EMAC_REG_EMAC_MAC_MATCH, val);

 val = ((params->mac_addr[2] << 24) |
        (params->mac_addr[3] << 16) |
        (params->mac_addr[4] << 8) |
  params->mac_addr[5]);
 elink_cb_reg_write(sc, emac_base + EMAC_REG_EMAC_MAC_MATCH + 4, val);
}
