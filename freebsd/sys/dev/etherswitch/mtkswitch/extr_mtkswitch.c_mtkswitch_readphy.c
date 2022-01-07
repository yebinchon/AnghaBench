
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mtkswitch_phy_read ) (int ,int,int) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
typedef int device_t ;


 struct mtkswitch_softc* device_get_softc (int ) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int
mtkswitch_readphy(device_t dev, int phy, int reg)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);

 return (sc->hal.mtkswitch_phy_read(dev, phy, reg));
}
