
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct bfe_softc {int dummy; } ;
typedef int device_t ;


 int bfe_readphy (struct bfe_softc*,int,int*) ;
 struct bfe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bfe_miibus_readreg(device_t dev, int phy, int reg)
{
 struct bfe_softc *sc;
 u_int32_t ret;

 sc = device_get_softc(dev);
 bfe_readphy(sc, reg, &ret);

 return (ret);
}
