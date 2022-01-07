
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct musbotg_softc {int dummy; } ;


 scalar_t__ MUSB2_MASK_SOFTC ;
 scalar_t__ MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_POWER ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,scalar_t__) ;

__attribute__((used)) static void
musbotg_pull_common(struct musbotg_softc *sc, uint8_t on)
{
 uint8_t temp;

 temp = MUSB2_READ_1(sc, MUSB2_REG_POWER);
 if (on)
  temp |= MUSB2_MASK_SOFTC;
 else
  temp &= ~MUSB2_MASK_SOFTC;

 MUSB2_WRITE_1(sc, MUSB2_REG_POWER, temp);
}
