
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int dummy; } ;


 int PHY_WRITE (struct mii_softc*,int,int ) ;

__attribute__((used)) static void
brgphy_fixup_5704_a0_bug(struct mii_softc *sc)
{
 static const struct {
  int reg;
  uint16_t val;
 } dspcode[] = {
  { 0x1c, 0x8d68 },
  { 0x1c, 0x8d68 },
  { 0, 0 },
 };
 int i;

 for (i = 0; dspcode[i].reg != 0; i++)
  PHY_WRITE(sc, dspcode[i].reg, dspcode[i].val);
}
