
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int e6000sw_softc_t ;
typedef int device_t ;


 int E6000SW_LOCK_ASSERT (int *,int ) ;
 int E6000SW_NUM_PHY_REGS ;
 scalar_t__ E6000SW_WAITREADY2 (int *,int ,int ) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int PHY_DATA_MASK ;
 int REG_GLOBAL2 ;
 int SA_XLOCKED ;
 int SMI_CMD_BUSY ;
 int SMI_CMD_DEV_ADDR ;
 int SMI_CMD_DEV_ADDR_MASK ;
 int SMI_CMD_OP_C22_READ ;
 int SMI_CMD_REG_ADDR_MASK ;
 int SMI_PHY_CMD_REG ;
 int SMI_PHY_DATA_REG ;
 int * device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int e6000sw_is_phyport (int *,int) ;
 int e6000sw_readreg (int *,int ,int ) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static int
e6000sw_readphy(device_t dev, int phy, int reg)
{
 e6000sw_softc_t *sc;
 uint32_t val;

 sc = device_get_softc(dev);
 if (!e6000sw_is_phyport(sc, phy) || reg >= E6000SW_NUM_PHY_REGS) {
  device_printf(dev, "Wrong register address.\n");
  return (EINVAL);
 }

 E6000SW_LOCK_ASSERT(sc, SA_XLOCKED);
 if (E6000SW_WAITREADY2(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
  device_printf(dev, "Timeout while waiting for switch\n");
  return (ETIMEDOUT);
 }

 e6000sw_writereg(sc, REG_GLOBAL2, SMI_PHY_CMD_REG,
     SMI_CMD_OP_C22_READ | (reg & SMI_CMD_REG_ADDR_MASK) |
     ((phy << SMI_CMD_DEV_ADDR) & SMI_CMD_DEV_ADDR_MASK));
 if (E6000SW_WAITREADY2(sc, SMI_PHY_CMD_REG, SMI_CMD_BUSY)) {
  device_printf(dev, "Timeout while waiting for switch\n");
  return (ETIMEDOUT);
 }

 val = e6000sw_readreg(sc, REG_GLOBAL2, SMI_PHY_DATA_REG);

 return (val & PHY_DATA_MASK);
}
