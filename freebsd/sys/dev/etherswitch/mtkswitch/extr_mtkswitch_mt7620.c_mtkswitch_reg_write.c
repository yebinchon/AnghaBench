
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* mtkswitch_write ) (struct mtkswitch_softc*,int ,int ) ;int (* mtkswitch_read ) (struct mtkswitch_softc*,int ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
typedef int device_t ;


 int MTKSWITCH_HI16_MSK ;
 scalar_t__ MTKSWITCH_IS_HI16 (int) ;
 int MTKSWITCH_LO16_MSK ;
 int MTKSWITCH_REG32 (int) ;
 int MTKSWITCH_TO_HI16 (int) ;
 int MTKSWITCH_TO_LO16 (int) ;
 struct mtkswitch_softc* device_get_softc (int ) ;
 int stub1 (struct mtkswitch_softc*,int ) ;
 int stub2 (struct mtkswitch_softc*,int ,int ) ;

__attribute__((used)) static int
mtkswitch_reg_write(device_t dev, int reg, int val)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);
 uint32_t tmp;

 tmp = sc->hal.mtkswitch_read(sc, MTKSWITCH_REG32(reg));
 if (MTKSWITCH_IS_HI16(reg)) {
  tmp &= MTKSWITCH_LO16_MSK;
  tmp |= MTKSWITCH_TO_HI16(val);
 } else {
  tmp &= MTKSWITCH_HI16_MSK;
  tmp |= MTKSWITCH_TO_LO16(val);
 }
 sc->hal.mtkswitch_write(sc, MTKSWITCH_REG32(reg), tmp);

 return (0);
}
