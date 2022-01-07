
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int dummy; } ;
typedef int device_t ;


 int STGE_MII_LOCK (struct stge_softc*) ;
 int STGE_MII_UNLOCK (struct stge_softc*) ;
 struct stge_softc* device_get_softc (int ) ;
 int mii_bitbang_writereg (int ,int *,int,int,int) ;
 int stge_mii_bitbang_ops ;

__attribute__((used)) static int
stge_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct stge_softc *sc;

 sc = device_get_softc(dev);

 STGE_MII_LOCK(sc);
 mii_bitbang_writereg(dev, &stge_mii_bitbang_ops, phy, reg, val);
 STGE_MII_UNLOCK(sc);
 return (0);
}
