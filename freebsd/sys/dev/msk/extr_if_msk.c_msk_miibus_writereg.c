
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_if_softc {int dummy; } ;
typedef int device_t ;


 struct msk_if_softc* device_get_softc (int ) ;
 int msk_phy_writereg (struct msk_if_softc*,int,int,int) ;

__attribute__((used)) static int
msk_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct msk_if_softc *sc_if;

 sc_if = device_get_softc(dev);

 return (msk_phy_writereg(sc_if, phy, reg, val));
}
