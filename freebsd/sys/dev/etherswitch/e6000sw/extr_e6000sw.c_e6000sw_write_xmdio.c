
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int e6000sw_softc_t ;
typedef int device_t ;


 int E6000SW_LOCK_ASSERT (int *,int ) ;
 scalar_t__ E6000SW_WAITREADY2 (int *,int ,int ) ;
 int ETIMEDOUT ;
 int REG_GLOBAL2 ;
 int SA_XLOCKED ;
 int SMI_CMD_BUSY ;
 int SMI_CMD_DEV_ADDR ;
 int SMI_CMD_DEV_ADDR_MASK ;
 int SMI_CMD_OP_C45_ADDR ;
 int SMI_CMD_OP_C45_WRITE ;
 int SMI_CMD_REG_ADDR_MASK ;
 int SMI_PHY_CMD_REG ;
 int SMI_PHY_DATA_REG ;
 int * device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static int
e6000sw_write_xmdio(device_t dev, int phy, int devaddr, int devreg, int val)
{
 e6000sw_softc_t *sc;
 uint32_t reg;

 sc = device_get_softc(dev);
 E6000SW_LOCK_ASSERT(sc, SA_XLOCKED);
 if (E6000SW_WAITREADY2(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
  device_printf(dev, "Timeout while waiting for switch\n");
  return (ETIMEDOUT);
 }

 reg = devaddr & SMI_CMD_REG_ADDR_MASK;
 reg |= (phy << SMI_CMD_DEV_ADDR) & SMI_CMD_DEV_ADDR_MASK;


 e6000sw_writereg(sc, REG_GLOBAL2, SMI_PHY_DATA_REG, devreg);
 e6000sw_writereg(sc, REG_GLOBAL2, SMI_PHY_CMD_REG,
     reg | SMI_CMD_OP_C45_ADDR);
 if (E6000SW_WAITREADY2(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
  device_printf(dev, "Timeout while waiting for switch\n");
  return (ETIMEDOUT);
 }


 e6000sw_writereg(sc, REG_GLOBAL2, SMI_PHY_DATA_REG, devreg);
 e6000sw_writereg(sc, REG_GLOBAL2, SMI_PHY_CMD_REG,
     reg | SMI_CMD_OP_C45_WRITE);

 return (0);
}
