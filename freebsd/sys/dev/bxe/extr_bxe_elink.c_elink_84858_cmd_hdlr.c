
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 scalar_t__ MDIO_848xx_CMD_HDLR_COMMAND ;
 scalar_t__ MDIO_848xx_CMD_HDLR_DATA1 ;
 scalar_t__ MDIO_848xx_CMD_HDLR_STATUS ;
 int MDIO_CTL_DEVAD ;
 scalar_t__ PHY84858_STATUS_CMD_COMPLETE_ERROR ;
 scalar_t__ PHY84858_STATUS_CMD_COMPLETE_PASS ;
 scalar_t__ PHY84858_STATUS_CMD_IN_PROGRESS ;
 scalar_t__ PHY84858_STATUS_CMD_SYSTEM_BUSY ;
 int PHY848xx_CMDHDLR_WAIT ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,scalar_t__,scalar_t__*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static elink_status_t elink_84858_cmd_hdlr(struct elink_phy *phy,
        struct elink_params *params,
        uint16_t fw_cmd,
        uint16_t cmd_args[], int argc)
{
 int idx;
 uint16_t val;
 struct bxe_softc *sc = params->sc;
 for (idx = 0; idx < PHY848xx_CMDHDLR_WAIT; idx++) {
  elink_cl45_read(sc, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_STATUS, &val);
  if ((val != PHY84858_STATUS_CMD_IN_PROGRESS) &&
      (val != PHY84858_STATUS_CMD_SYSTEM_BUSY))
   break;
  DELAY(1000 * 1);
 }
 if (idx >= PHY848xx_CMDHDLR_WAIT) {
  ELINK_DEBUG_P0(sc, "FW cmd: FW not ready.\n");
  return ELINK_STATUS_ERROR;
 }





 for (idx = 0; idx < argc; idx++) {
  elink_cl45_write(sc, phy, MDIO_CTL_DEVAD,
     MDIO_848xx_CMD_HDLR_DATA1 + idx,
     cmd_args[idx]);
 }




 elink_cl45_write(sc, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_COMMAND, fw_cmd);






 for (idx = 0; idx < PHY848xx_CMDHDLR_WAIT; idx++) {
  elink_cl45_read(sc, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_STATUS, &val);
  if ((val == PHY84858_STATUS_CMD_COMPLETE_PASS) ||
      (val == PHY84858_STATUS_CMD_COMPLETE_ERROR))
   break;
  DELAY(1000 * 1);
 }
 if ((idx >= PHY848xx_CMDHDLR_WAIT) ||
     (val == PHY84858_STATUS_CMD_COMPLETE_ERROR)) {
  ELINK_DEBUG_P0(sc, "FW cmd failed.\n");
  return ELINK_STATUS_ERROR;
 }





 for (idx = 0; idx < argc; idx++) {
  elink_cl45_read(sc, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_DATA1 + idx,
    &cmd_args[idx]);
 }

 return ELINK_STATUS_OK;
}
