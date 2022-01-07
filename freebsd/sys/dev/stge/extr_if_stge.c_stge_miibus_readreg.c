
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int dummy; } ;
typedef int device_t ;


 int CSR_READ_1 (struct stge_softc*,int) ;
 int STGE_MII_LOCK (struct stge_softc*) ;
 int STGE_MII_UNLOCK (struct stge_softc*) ;
 int STGE_PhyCtrl ;
 struct stge_softc* device_get_softc (int ) ;
 int mii_bitbang_readreg (int ,int *,int,int) ;
 int stge_mii_bitbang_ops ;

__attribute__((used)) static int
stge_miibus_readreg(device_t dev, int phy, int reg)
{
 struct stge_softc *sc;
 int error, val;

 sc = device_get_softc(dev);

 if (reg == STGE_PhyCtrl) {

  STGE_MII_LOCK(sc);
  error = CSR_READ_1(sc, STGE_PhyCtrl);
  STGE_MII_UNLOCK(sc);
  return (error);
 }

 STGE_MII_LOCK(sc);
 val = mii_bitbang_readreg(dev, &stge_mii_bitbang_ops, phy, reg);
 STGE_MII_UNLOCK(sc);
 return (val);
}
