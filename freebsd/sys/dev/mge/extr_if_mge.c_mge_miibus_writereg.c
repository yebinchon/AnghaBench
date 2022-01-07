
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mge_softc {int dummy; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 struct mge_softc* device_get_softc (int ) ;
 int mv_write_ext_phy (int ,int,int,int) ;
 int switch_attached ;

__attribute__((used)) static int
mge_miibus_writereg(device_t dev, int phy, int reg, int value)
{
 struct mge_softc *sc;
 sc = device_get_softc(dev);

 KASSERT(!switch_attached, ("miibus used with switch attached"));

 mv_write_ext_phy(dev, phy, reg, value);

 return (0);
}
