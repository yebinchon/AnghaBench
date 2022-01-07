
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int dummy; } ;


 int PHY_WRITE (struct mii_softc*,int,int ) ;

void
bcm54k2_load_dspcode(struct mii_softc *sc)
{
 static const struct {
  int reg;
  uint16_t val;
 } dspcode[] = {
  { 4, 0x01e1 },
  { 9, 0x0300 },
  { 0, 0 },
 };
 int i;

 for (i = 0; dspcode[i].reg != 0; i++)
  PHY_WRITE(sc, dspcode[i].reg, dspcode[i].val);

}
