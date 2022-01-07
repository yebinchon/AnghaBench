
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int dummy; } ;
typedef int device_t ;


 int XL_SEL_WIN (int) ;
 struct xl_softc* device_get_softc (int ) ;
 int mii_bitbang_readreg (int ,int *,int,int) ;
 int xl_mii_bitbang_ops ;

__attribute__((used)) static int
xl_miibus_readreg(device_t dev, int phy, int reg)
{
 struct xl_softc *sc;

 sc = device_get_softc(dev);


 XL_SEL_WIN(4);

 return (mii_bitbang_readreg(dev, &xl_mii_bitbang_ops, phy, reg));
}
