
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtkswitch_softc {int dummy; } ;


 int MTKSWITCH_WRITE (struct mtkswitch_softc*,int,int ) ;

__attribute__((used)) static uint32_t
mtkswitch_reg_write32(struct mtkswitch_softc *sc, int reg, uint32_t val)
{

 MTKSWITCH_WRITE(sc, reg, val);
 return (0);
}
