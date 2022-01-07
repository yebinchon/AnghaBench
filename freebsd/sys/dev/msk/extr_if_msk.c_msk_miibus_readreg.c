
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_if_softc {int dummy; } ;
typedef int device_t ;


 struct msk_if_softc* device_get_softc (int ) ;
 int msk_phy_readreg (struct msk_if_softc*,int,int) ;

__attribute__((used)) static int
msk_miibus_readreg(device_t dev, int phy, int reg)
{
 struct msk_if_softc *sc_if;

 sc_if = device_get_softc(dev);

 return (msk_phy_readreg(sc_if, phy, reg));
}
