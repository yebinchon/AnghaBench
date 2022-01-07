
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct et_softc {int ifp; } ;
typedef int device_t ;


 int CSR_READ_4 (struct et_softc*,int ) ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int DELAY (int) ;
 int ET_MII_ADDR ;
 int ET_MII_ADDR_PHY_MASK ;
 int ET_MII_ADDR_PHY_SHIFT ;
 int ET_MII_ADDR_REG_MASK ;
 int ET_MII_ADDR_REG_SHIFT ;
 int ET_MII_CMD ;
 int ET_MII_CMD_READ ;
 int ET_MII_IND ;
 int ET_MII_IND_BUSY ;
 int ET_MII_IND_INVALID ;
 int ET_MII_STAT ;
 int ET_MII_STAT_VALUE_MASK ;
 int NRETRY ;
 struct et_softc* device_get_softc (int ) ;
 int if_printf (int ,char*,int,int) ;

__attribute__((used)) static int
et_miibus_readreg(device_t dev, int phy, int reg)
{
 struct et_softc *sc;
 uint32_t val;
 int i, ret;

 sc = device_get_softc(dev);

 CSR_WRITE_4(sc, ET_MII_CMD, 0);

 val = (phy << ET_MII_ADDR_PHY_SHIFT) & ET_MII_ADDR_PHY_MASK;
 val |= (reg << ET_MII_ADDR_REG_SHIFT) & ET_MII_ADDR_REG_MASK;
 CSR_WRITE_4(sc, ET_MII_ADDR, val);


 CSR_WRITE_4(sc, ET_MII_CMD, ET_MII_CMD_READ);



 for (i = 0; i < 50; ++i) {
  val = CSR_READ_4(sc, ET_MII_IND);
  if ((val & (ET_MII_IND_BUSY | ET_MII_IND_INVALID)) == 0)
   break;
  DELAY(50);
 }
 if (i == 50) {
  if_printf(sc->ifp,
     "read phy %d, reg %d timed out\n", phy, reg);
  ret = 0;
  goto back;
 }



 val = CSR_READ_4(sc, ET_MII_STAT);
 ret = val & ET_MII_STAT_VALUE_MASK;

back:

 CSR_WRITE_4(sc, ET_MII_CMD, 0);
 return (ret);
}
