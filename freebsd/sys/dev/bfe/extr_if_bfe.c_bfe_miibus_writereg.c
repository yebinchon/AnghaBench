
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {int dummy; } ;
typedef int device_t ;


 int bfe_writephy (struct bfe_softc*,int,int) ;
 struct bfe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bfe_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 struct bfe_softc *sc;

 sc = device_get_softc(dev);
 bfe_writephy(sc, reg, val);

 return (0);
}
