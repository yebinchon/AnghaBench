
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
typedef int device_t ;


 int MTKSWITCH_HI16 (int ) ;
 scalar_t__ MTKSWITCH_IS_HI16 (int) ;
 int MTKSWITCH_LO16 (int ) ;
 int MTKSWITCH_REG32 (int) ;
 struct mtkswitch_softc* device_get_softc (int ) ;
 int stub1 (struct mtkswitch_softc*,int ) ;

__attribute__((used)) static int
mtkswitch_reg_read(device_t dev, int reg)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);
 uint32_t val;

 val = sc->hal.mtkswitch_read(sc, MTKSWITCH_REG32(reg));
 if (MTKSWITCH_IS_HI16(reg))
  return (MTKSWITCH_HI16(val));
 return (MTKSWITCH_LO16(val));
}
