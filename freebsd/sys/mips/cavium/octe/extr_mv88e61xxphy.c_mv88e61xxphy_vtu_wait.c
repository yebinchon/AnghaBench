
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mv88e61xxphy_softc {int dummy; } ;


 int MV88E61XX_GLOBAL ;
 int MV88E61XX_GLOBAL_VTU_OP ;
 int MV88E61XX_GLOBAL_VTU_OP_BUSY ;
 int MV88E61XX_READ (struct mv88e61xxphy_softc*,int ,int ) ;

__attribute__((used)) static void
mv88e61xxphy_vtu_wait(struct mv88e61xxphy_softc *sc)
{
 uint16_t val;

 for (;;) {
  val = MV88E61XX_READ(sc, MV88E61XX_GLOBAL, MV88E61XX_GLOBAL_VTU_OP);
  if ((val & MV88E61XX_GLOBAL_VTU_OP_BUSY) == 0)
   return;
 }
}
