
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* arswitch_phy_write ) (int ,int,int,int) ;} ;
struct arswitch_softc {TYPE_1__ hal; } ;
typedef int device_t ;


 struct arswitch_softc* device_get_softc (int ) ;
 int stub1 (int ,int,int,int) ;

__attribute__((used)) static int
arswitch_writephy(device_t dev, int phy, int reg, int val)
{
 struct arswitch_softc *sc = device_get_softc(dev);

 return (sc->hal.arswitch_phy_write(dev, phy, reg, val));
}
