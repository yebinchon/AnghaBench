
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_SFP_EEPROM_PAGE_SIZE ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 scalar_t__ MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF ;
 int MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK ;
 scalar_t__ MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT ;
 scalar_t__ MDIO_PMA_REG_SFP_TWO_WIRE_CTRL ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK ;
 scalar_t__ MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,scalar_t__,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,scalar_t__,int) ;

__attribute__((used)) static elink_status_t elink_8726_read_sfp_module_eeprom(struct elink_phy *phy,
          struct elink_params *params,
          uint8_t dev_addr, uint16_t addr, uint8_t byte_cnt,
          uint8_t *o_buf, uint8_t is_init)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val = 0;
 uint16_t i;
 if (byte_cnt > ELINK_SFP_EEPROM_PAGE_SIZE) {
  ELINK_DEBUG_P0(sc,
     "Reading from eeprom is limited to 0xf\n");
  return ELINK_STATUS_ERROR;
 }

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT,
    (byte_cnt | (dev_addr << 8)));


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR,
    addr);


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_SFP_TWO_WIRE_CTRL,
    0x2c0f);


 for (i = 0; i < 100; i++) {
  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, &val);
  if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) ==
      MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE)
   break;
  DELAY(5);
 }

 if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) !=
      MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE) {
  ELINK_DEBUG_P1(sc,
    "Got bad status 0x%x when reading from SFP+ EEPROM\n",
    (val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK));
  return ELINK_STATUS_ERROR;
 }


 for (i = 0; i < byte_cnt; i++) {
  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF + i, &val);
  o_buf[i] = (uint8_t)(val & MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK);
 }

 for (i = 0; i < 100; i++) {
  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, &val);
  if ((val & MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK) ==
      MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE)
   return ELINK_STATUS_OK;
  DELAY(1000 * 1);
 }
 return ELINK_STATUS_ERROR;
}
