
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct elink_phy {int addr; scalar_t__ mdio_ctrl; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_OK ;
 int ELINK_STATUS_TIMEOUT ;
 int EMAC_MDIO_COMM_COMMAND_WRITE_22 ;
 int EMAC_MDIO_COMM_START_BUSY ;
 int EMAC_MDIO_MODE_CLAUSE_45 ;
 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ;
 scalar_t__ EMAC_REG_EMAC_MDIO_MODE ;
 int REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;

__attribute__((used)) static elink_status_t elink_cl22_write(struct bxe_softc *sc,
           struct elink_phy *phy,
           uint16_t reg, uint16_t val)
{
 uint32_t tmp, mode;
 uint8_t i;
 elink_status_t rc = ELINK_STATUS_OK;

 mode = REG_RD(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE);
 REG_WR(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE,
        mode & ~EMAC_MDIO_MODE_CLAUSE_45);


 tmp = ((phy->addr << 21) | (reg << 16) | val |
        EMAC_MDIO_COMM_COMMAND_WRITE_22 |
        EMAC_MDIO_COMM_START_BUSY);
 REG_WR(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, tmp);

 for (i = 0; i < 50; i++) {
  DELAY(10);

  tmp = REG_RD(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM);
  if (!(tmp & EMAC_MDIO_COMM_START_BUSY)) {
   DELAY(5);
   break;
  }
 }
 if (tmp & EMAC_MDIO_COMM_START_BUSY) {
  ELINK_DEBUG_P0(sc, "write phy register failed\n");
  rc = ELINK_STATUS_TIMEOUT;
 }
 REG_WR(sc, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE, mode);
 return rc;
}
