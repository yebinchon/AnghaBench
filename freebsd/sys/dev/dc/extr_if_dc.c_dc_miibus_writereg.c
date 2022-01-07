
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {scalar_t__ dc_type; } ;
typedef int device_t ;


 int CSR_READ_4 (struct dc_softc*,int) ;
 int CSR_WRITE_4 (struct dc_softc*,int,int) ;
 int DC_AL_ANAR ;
 int DC_AL_ANER ;
 int DC_AL_BMCR ;
 int DC_AL_BMSR ;
 int DC_AL_DEVID ;
 int DC_AL_LPAR ;
 int DC_AL_VENID ;
 scalar_t__ DC_IS_COMET (struct dc_softc*) ;
 scalar_t__ DC_IS_PNIC (struct dc_softc*) ;
 int DC_NETCFG ;
 int DC_NETCFG_PORTSEL ;
 int DC_PN_MII ;
 int DC_PN_MIIOPCODE_WRITE ;
 int DC_PN_MII_BUSY ;
 int DC_ROM ;
 int DC_TIMEOUT ;
 scalar_t__ DC_TYPE_98713 ;
 scalar_t__ DC_TYPE_ULI_M5263 ;
 int DC_ULI_PHY_ADDR_MASK ;
 int DC_ULI_PHY_ADDR_SHIFT ;
 int DC_ULI_PHY_DATA_MASK ;
 int DC_ULI_PHY_DATA_SHIFT ;
 int DC_ULI_PHY_OP_WRITE ;
 int DC_ULI_PHY_REG_MASK ;
 int DC_ULI_PHY_REG_SHIFT ;
 int DELAY (int) ;







 int dc_mii_bitbang_ops ;
 struct dc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int mii_bitbang_writereg (int ,int *,int,int,int) ;

__attribute__((used)) static int
dc_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct dc_softc *sc;
 int i, phy_reg = 0;

 sc = device_get_softc(dev);

 if (DC_IS_PNIC(sc)) {
  CSR_WRITE_4(sc, DC_PN_MII, DC_PN_MIIOPCODE_WRITE |
      (phy << 23) | (reg << 10) | data);
  for (i = 0; i < DC_TIMEOUT; i++) {
   if (!(CSR_READ_4(sc, DC_PN_MII) & DC_PN_MII_BUSY))
    break;
  }
  return (0);
 }

 if (sc->dc_type == DC_TYPE_ULI_M5263) {
  CSR_WRITE_4(sc, DC_ROM,
      ((phy << DC_ULI_PHY_ADDR_SHIFT) & DC_ULI_PHY_ADDR_MASK) |
      ((reg << DC_ULI_PHY_REG_SHIFT) & DC_ULI_PHY_REG_MASK) |
      ((data << DC_ULI_PHY_DATA_SHIFT) & DC_ULI_PHY_DATA_MASK) |
      DC_ULI_PHY_OP_WRITE);
  DELAY(1);
  return (0);
 }

 if (DC_IS_COMET(sc)) {
  switch (reg) {
  case 131:
   phy_reg = DC_AL_BMCR;
   break;
  case 130:
   phy_reg = DC_AL_BMSR;
   break;
  case 129:
   phy_reg = DC_AL_VENID;
   break;
  case 128:
   phy_reg = DC_AL_DEVID;
   break;
  case 134:
   phy_reg = DC_AL_ANAR;
   break;
  case 132:
   phy_reg = DC_AL_LPAR;
   break;
  case 133:
   phy_reg = DC_AL_ANER;
   break;
  default:
   device_printf(dev, "phy_write: bad phy register %x\n",
       reg);
   return (0);
   break;
  }

  CSR_WRITE_4(sc, phy_reg, data);
  return (0);
 }

 if (sc->dc_type == DC_TYPE_98713) {
  phy_reg = CSR_READ_4(sc, DC_NETCFG);
  CSR_WRITE_4(sc, DC_NETCFG, phy_reg & ~DC_NETCFG_PORTSEL);
 }
 mii_bitbang_writereg(dev, &dc_mii_bitbang_ops, phy, reg, data);
 if (sc->dc_type == DC_TYPE_98713)
  CSR_WRITE_4(sc, DC_NETCFG, phy_reg);

 return (0);
}
