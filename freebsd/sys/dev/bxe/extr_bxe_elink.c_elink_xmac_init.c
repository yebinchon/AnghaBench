
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_NUM (struct bxe_softc*) ;
 scalar_t__ CHIP_NUM_57840_2_20 ;
 scalar_t__ CHIP_NUM_57840_4_10 ;
 scalar_t__ CHIP_NUM_57840_OBS ;
 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 scalar_t__ ELINK_SPEED_10000 ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_CLEAR ;
 scalar_t__ MISC_REGISTERS_RESET_REG_2_SET ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 int MISC_REGISTERS_RESET_REG_2_XMAC_SOFT ;
 int MISC_REG_RESET_REG_2 ;
 scalar_t__ MISC_REG_XMAC_CORE_PORT_MODE ;
 scalar_t__ MISC_REG_XMAC_PHY_PORT_MODE ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 scalar_t__ elink_is_4_port_mode (struct bxe_softc*) ;

__attribute__((used)) static void elink_xmac_init(struct elink_params *params, uint32_t max_speed)
{
 struct bxe_softc *sc = params->sc;
 uint32_t is_port4mode = elink_is_4_port_mode(sc);







 if (((CHIP_NUM(sc) == CHIP_NUM_57840_4_10) ||
      (CHIP_NUM(sc) == CHIP_NUM_57840_2_20) ||
      (CHIP_NUM(sc) == CHIP_NUM_57840_OBS)) &&
     is_port4mode &&
     (REG_RD(sc, MISC_REG_RESET_REG_2) &
      MISC_REGISTERS_RESET_REG_2_XMAC)) {
  ELINK_DEBUG_P0(sc,
     "XMAC already out of reset in 4-port mode\n");
  return;
 }


 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
        MISC_REGISTERS_RESET_REG_2_XMAC);
 DELAY(1000 * 1);

 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
        MISC_REGISTERS_RESET_REG_2_XMAC);
 if (is_port4mode) {
  ELINK_DEBUG_P0(sc, "Init XMAC to 2 ports x 10G per path\n");


  REG_WR(sc, MISC_REG_XMAC_CORE_PORT_MODE, 1);


  REG_WR(sc, MISC_REG_XMAC_PHY_PORT_MODE, 3);
 } else {

  REG_WR(sc, MISC_REG_XMAC_CORE_PORT_MODE, 0);
  if (max_speed == ELINK_SPEED_10000) {
   ELINK_DEBUG_P0(sc,
      "Init XMAC to 10G x 1 port per path\n");

   REG_WR(sc, MISC_REG_XMAC_PHY_PORT_MODE, 3);
  } else {
   ELINK_DEBUG_P0(sc,
      "Init XMAC to 20G x 2 ports per path\n");

   REG_WR(sc, MISC_REG_XMAC_PHY_PORT_MODE, 1);
  }
 }

 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
        MISC_REGISTERS_RESET_REG_2_XMAC_SOFT);
 DELAY(1000 * 1);

 REG_WR(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
        MISC_REGISTERS_RESET_REG_2_XMAC_SOFT);

}
