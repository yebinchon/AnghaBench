
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct mv88e61xxphy_softc {int dummy; } ;
typedef enum mv88e61xxphy_vtu_membership_type { ____Placeholder_mv88e61xxphy_vtu_membership_type } mv88e61xxphy_vtu_membership_type ;






 int MV88E61XX_GLOBAL ;
 unsigned int MV88E61XX_GLOBAL_VTU_DATA_P0P3 ;
 unsigned int MV88E61XX_GLOBAL_VTU_DATA_P4P5 ;
 unsigned int MV88E61XX_READ (struct mv88e61xxphy_softc*,int ,unsigned int) ;
 int MV88E61XX_WRITE (struct mv88e61xxphy_softc*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void
mv88e61xxphy_vtu_set_membership(struct mv88e61xxphy_softc *sc, unsigned port,
    enum mv88e61xxphy_vtu_membership_type type)
{
 unsigned shift, reg;
 uint16_t bits;
 uint16_t val;

 switch (type) {
 case 129:
  bits = 0;
  break;
 case 128:
  bits = 1;
  break;
 case 130:
  bits = 2;
  break;
 case 131:
  bits = 3;
  break;
 default:
  return;
 }

 if (port < 4) {
  reg = MV88E61XX_GLOBAL_VTU_DATA_P0P3;
  shift = port * 4;
 } else {
  reg = MV88E61XX_GLOBAL_VTU_DATA_P4P5;
  shift = (port - 4) * 4;
 }

 val = MV88E61XX_READ(sc, MV88E61XX_GLOBAL, reg);
 val |= bits << shift;
 MV88E61XX_WRITE(sc, MV88E61XX_GLOBAL, reg, val);
}
