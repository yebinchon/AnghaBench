
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtkswitch_softc {int dummy; } ;
typedef int device_t ;


 int MA_OWNED ;
 int MTKSWITCH_HI16_MSK ;
 scalar_t__ MTKSWITCH_IS_HI16 (int) ;
 int MTKSWITCH_LO16_MSK ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_REG32 (int) ;
 int MTKSWITCH_TO_HI16 (int) ;
 int MTKSWITCH_TO_LO16 (int) ;
 int MTKSWITCH_WRITE (struct mtkswitch_softc*,int ,int ) ;
 struct mtkswitch_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtkswitch_reg_write(device_t dev, int reg, int val)
{
 struct mtkswitch_softc *sc = device_get_softc(dev);
 uint32_t tmp;

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 tmp = MTKSWITCH_READ(sc, MTKSWITCH_REG32(reg));
 if (MTKSWITCH_IS_HI16(reg)) {
  tmp &= MTKSWITCH_LO16_MSK;
  tmp |= MTKSWITCH_TO_HI16(val);
 } else {
  tmp &= MTKSWITCH_HI16_MSK;
  tmp |= MTKSWITCH_TO_LO16(val);
 }
 MTKSWITCH_WRITE(sc, MTKSWITCH_REG32(reg), tmp);

 return (0);
}
