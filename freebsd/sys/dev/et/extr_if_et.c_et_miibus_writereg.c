
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
 int ET_MII_CTRL ;
 int ET_MII_CTRL_VALUE_MASK ;
 int ET_MII_CTRL_VALUE_SHIFT ;
 int ET_MII_IND ;
 int ET_MII_IND_BUSY ;
 int NRETRY ;
 struct et_softc* device_get_softc (int ) ;
 int et_miibus_readreg (int ,int,int) ;
 int if_printf (int ,char*,int,int) ;

__attribute__((used)) static int
et_miibus_writereg(device_t dev, int phy, int reg, int val0)
{
 struct et_softc *sc;
 uint32_t val;
 int i;

 sc = device_get_softc(dev);

 CSR_WRITE_4(sc, ET_MII_CMD, 0);

 val = (phy << ET_MII_ADDR_PHY_SHIFT) & ET_MII_ADDR_PHY_MASK;
 val |= (reg << ET_MII_ADDR_REG_SHIFT) & ET_MII_ADDR_REG_MASK;
 CSR_WRITE_4(sc, ET_MII_ADDR, val);


 CSR_WRITE_4(sc, ET_MII_CTRL,
     (val0 << ET_MII_CTRL_VALUE_SHIFT) & ET_MII_CTRL_VALUE_MASK);



 for (i = 0; i < 100; ++i) {
  val = CSR_READ_4(sc, ET_MII_IND);
  if ((val & ET_MII_IND_BUSY) == 0)
   break;
  DELAY(50);
 }
 if (i == 100) {
  if_printf(sc->ifp,
     "write phy %d, reg %d timed out\n", phy, reg);
  et_miibus_readreg(dev, phy, reg);
 }




 CSR_WRITE_4(sc, ET_MII_CMD, 0);
 return (0);
}
