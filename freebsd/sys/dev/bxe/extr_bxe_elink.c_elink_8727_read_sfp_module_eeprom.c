
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
 int ELINK_STATUS_TIMEOUT ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF ;
 int MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK ;
 int MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_CTRL ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE ;
 int MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int,int) ;

__attribute__((used)) static elink_status_t elink_8727_read_sfp_module_eeprom(struct elink_phy *phy,
          struct elink_params *params,
          uint8_t dev_addr, uint16_t addr, uint8_t byte_cnt,
          uint8_t *o_buf, uint8_t is_init)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val, i;

 if (byte_cnt > ELINK_SFP_EEPROM_PAGE_SIZE) {
  ELINK_DEBUG_P0(sc,
     "Reading from eeprom is limited to 0xf\n");
  return ELINK_STATUS_ERROR;
 }





 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR,
    ((dev_addr << 8) | 1));


 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_SFP_TWO_WIRE_CTRL,
   &val);


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT,
    ((byte_cnt < 2) ? 2 : byte_cnt));


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR,
    addr);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    0x8004,
    MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF);


 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_SFP_TWO_WIRE_CTRL,
    0x8002);



 DELAY(1000 * 1);


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
  return ELINK_STATUS_TIMEOUT;
 }


 for (i = 0; i < byte_cnt; i++) {
  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF + i, &val);
  o_buf[i] = (uint8_t)(val & MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK);
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
