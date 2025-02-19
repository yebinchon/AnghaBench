
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thunder_mdio_softc {scalar_t__ mode; } ;
typedef int ssize_t ;
typedef int device_t ;


 int DELAY (int) ;
 scalar_t__ MODE_IEEE_C22 ;
 int SMI_CMD ;
 int SMI_CMD_PHY_ADR_MASK ;
 int SMI_CMD_PHY_ADR_SHIFT ;
 int SMI_CMD_PHY_OP_C22_READ ;
 int SMI_CMD_PHY_OP_C45_READ ;
 int SMI_CMD_PHY_REG_ADR_MASK ;
 int SMI_CMD_PHY_REG_ADR_SHIFT ;
 int SMI_RD_DAT ;
 int SMI_RD_DAT_DAT_MASK ;
 int SMI_RD_DAT_PENDING ;
 int SMI_RD_DAT_VAL ;
 struct thunder_mdio_softc* device_get_softc (int ) ;
 int mdio_reg_read (struct thunder_mdio_softc*,int ) ;
 int mdio_reg_write (struct thunder_mdio_softc*,int ,int) ;
 int thunder_mdio_c45_addr (struct thunder_mdio_softc*,int,int) ;
 int thunder_mdio_set_mode (struct thunder_mdio_softc*,scalar_t__) ;

__attribute__((used)) static int
thunder_mdio_read(device_t dev, int phy, int reg)
{
 struct thunder_mdio_softc *sc;
 uint64_t smi_cmd, smi_rd_dat;
 ssize_t timeout;
 int err;

 sc = device_get_softc(dev);


 thunder_mdio_set_mode(sc, MODE_IEEE_C22);




 smi_cmd = 0;

 if (sc->mode == MODE_IEEE_C22)
  smi_cmd |= SMI_CMD_PHY_OP_C22_READ;
 else {
  smi_cmd |= SMI_CMD_PHY_OP_C45_READ;
  err = thunder_mdio_c45_addr(sc, phy, reg);
  if (err != 0)
   return (err);

  reg = (reg >> 16) & 0x1F;
 }


 smi_cmd |= ((phy << SMI_CMD_PHY_ADR_SHIFT) & SMI_CMD_PHY_ADR_MASK);

 smi_cmd |= ((reg << SMI_CMD_PHY_REG_ADR_SHIFT) &
     SMI_CMD_PHY_REG_ADR_MASK);

 mdio_reg_write(sc, SMI_CMD, smi_cmd);
 for (timeout = 1000; timeout > 0; timeout--) {
  smi_rd_dat = mdio_reg_read(sc, SMI_RD_DAT);
  if (smi_rd_dat & SMI_RD_DAT_PENDING)
   DELAY(1000);
  else
   break;
 }

 if (smi_rd_dat & SMI_RD_DAT_VAL)
  return (smi_rd_dat & SMI_RD_DAT_DAT_MASK);
 else {

  return (0);
 }
}
