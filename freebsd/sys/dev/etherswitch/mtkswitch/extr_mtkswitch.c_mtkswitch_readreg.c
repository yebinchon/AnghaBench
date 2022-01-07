
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mtkswitch_reg_read ) (int ,int) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
typedef int device_t ;


 struct mtkswitch_softc* device_get_softc (int ) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
mtkswitch_readreg(device_t dev, int addr)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);

 return (sc->hal.mtkswitch_reg_read(dev, addr));
}
