
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct fxp_softc {int dummy; } ;


 int fxp_eeprom_getword (struct fxp_softc*,int,int ) ;

__attribute__((used)) static void
fxp_read_eeprom(struct fxp_softc *sc, u_short *data, int offset, int words)
{
 int i;

 for (i = 0; i < words; i++)
  data[i] = fxp_eeprom_getword(sc, offset + i, 0);
}
