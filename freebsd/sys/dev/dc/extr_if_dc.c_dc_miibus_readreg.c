
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {scalar_t__ dc_pmode; scalar_t__ dc_type; } ;
typedef int device_t ;


 int BMSR_MEDIAMASK ;
 int CSR_READ_4 (struct dc_softc*,int) ;
 int CSR_WRITE_4 (struct dc_softc*,int,int) ;
 int DC_AL_ANAR ;
 int DC_AL_ANER ;
 int DC_AL_BMCR ;
 int DC_AL_BMSR ;
 int DC_AL_DEVID ;
 int DC_AL_LPAR ;
 int DC_AL_VENID ;
 int DC_DEVICEID_21143 ;
 int DC_DEVICEID_82C168 ;
 scalar_t__ DC_IS_COMET (struct dc_softc*) ;
 scalar_t__ DC_IS_PNIC (struct dc_softc*) ;
 int DC_NETCFG ;
 int DC_NETCFG_PORTSEL ;
 scalar_t__ DC_PMODE_MII ;
 int DC_PN_MII ;
 int DC_PN_MIIOPCODE_READ ;
 int DC_PN_MII_BUSY ;
 int DC_ROM ;
 int DC_TIMEOUT ;
 scalar_t__ DC_TYPE_98713 ;
 scalar_t__ DC_TYPE_ULI_M5263 ;
 int DC_ULI_PHY_ADDR_MASK ;
 int DC_ULI_PHY_ADDR_SHIFT ;
 int DC_ULI_PHY_DATA_MASK ;
 int DC_ULI_PHY_OP_DONE ;
 int DC_ULI_PHY_OP_READ ;
 int DC_ULI_PHY_REG_MASK ;
 int DC_ULI_PHY_REG_SHIFT ;
 int DC_VENDORID_DEC ;
 int DC_VENDORID_LO ;
 int DELAY (int) ;





 int MII_NPHY ;


 int dc_mii_bitbang_ops ;
 struct dc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mii_bitbang_readreg (int ,int *,int,int) ;

__attribute__((used)) static int
dc_miibus_readreg(device_t dev, int phy, int reg)
{
 struct dc_softc *sc;
 int i, rval, phy_reg = 0;

 sc = device_get_softc(dev);

 if (sc->dc_pmode != DC_PMODE_MII) {
  if (phy == (MII_NPHY - 1)) {
   switch (reg) {
   case 130:




    return (BMSR_MEDIAMASK);
   case 129:
    if (DC_IS_PNIC(sc))
     return (DC_VENDORID_LO);
    return (DC_VENDORID_DEC);
   case 128:
    if (DC_IS_PNIC(sc))
     return (DC_DEVICEID_82C168);
    return (DC_DEVICEID_21143);
   default:
    return (0);
   }
  } else
   return (0);
 }

 if (DC_IS_PNIC(sc)) {
  CSR_WRITE_4(sc, DC_PN_MII, DC_PN_MIIOPCODE_READ |
      (phy << 23) | (reg << 18));
  for (i = 0; i < DC_TIMEOUT; i++) {
   DELAY(1);
   rval = CSR_READ_4(sc, DC_PN_MII);
   if (!(rval & DC_PN_MII_BUSY)) {
    rval &= 0xFFFF;
    return (rval == 0xFFFF ? 0 : rval);
   }
  }
  return (0);
 }

 if (sc->dc_type == DC_TYPE_ULI_M5263) {
  CSR_WRITE_4(sc, DC_ROM,
      ((phy << DC_ULI_PHY_ADDR_SHIFT) & DC_ULI_PHY_ADDR_MASK) |
      ((reg << DC_ULI_PHY_REG_SHIFT) & DC_ULI_PHY_REG_MASK) |
      DC_ULI_PHY_OP_READ);
  for (i = 0; i < DC_TIMEOUT; i++) {
   DELAY(1);
   rval = CSR_READ_4(sc, DC_ROM);
   if ((rval & DC_ULI_PHY_OP_DONE) != 0) {
    return (rval & DC_ULI_PHY_DATA_MASK);
   }
  }
  if (i == DC_TIMEOUT)
   device_printf(dev, "phy read timed out\n");
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
   device_printf(dev, "phy_read: bad phy register %x\n",
       reg);
   return (0);
  }

  rval = CSR_READ_4(sc, phy_reg) & 0x0000FFFF;
  if (rval == 0xFFFF)
   return (0);
  return (rval);
 }

 if (sc->dc_type == DC_TYPE_98713) {
  phy_reg = CSR_READ_4(sc, DC_NETCFG);
  CSR_WRITE_4(sc, DC_NETCFG, phy_reg & ~DC_NETCFG_PORTSEL);
 }
 rval = mii_bitbang_readreg(dev, &dc_mii_bitbang_ops, phy, reg);
 if (sc->dc_type == DC_TYPE_98713)
  CSR_WRITE_4(sc, DC_NETCFG, phy_reg);

 return (rval);
}
