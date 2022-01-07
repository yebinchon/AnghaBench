
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int dummy; } ;





 int DELAY (int) ;
 int PHY_WRITE (struct mii_softc*,int,int ) ;

__attribute__((used)) static void
bcm5401_load_dspcode(struct mii_softc *sc)
{
 static const struct {
  int reg;
  uint16_t val;
 } dspcode[] = {
  { 130, 0x0c20 },
  { 129, 0x0012 },
  { 128, 0x1804 },
  { 129, 0x0013 },
  { 128, 0x1204 },
  { 129, 0x8006 },
  { 128, 0x0132 },
  { 129, 0x8006 },
  { 128, 0x0232 },
  { 129, 0x201f },
  { 128, 0x0a20 },
  { 0, 0 },
 };
 int i;

 for (i = 0; dspcode[i].reg != 0; i++)
  PHY_WRITE(sc, dspcode[i].reg, dspcode[i].val);
 DELAY(40);
}
