
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e61xxphy_softc {struct mv88e61xxphy_port_softc* sc_ports; } ;
struct mv88e61xxphy_port_softc {int sc_flags; scalar_t__ sc_vlan; } ;


 int MV88E61XXPHY_PORT_FLAG_VTU_UPDATE ;
 int MV88E61XX_GLOBAL ;
 int MV88E61XX_GLOBAL_VTU_OP ;
 int MV88E61XX_GLOBAL_VTU_OP_BUSY ;
 int MV88E61XX_GLOBAL_VTU_OP_OP_FLUSH ;
 unsigned int MV88E61XX_PORTS ;
 int MV88E61XX_WRITE (struct mv88e61xxphy_softc*,int ,int ,int) ;
 int mv88e61xxphy_vtu_load (struct mv88e61xxphy_softc*,scalar_t__) ;
 int mv88e61xxphy_vtu_wait (struct mv88e61xxphy_softc*) ;

__attribute__((used)) static void
mv88e61xxphy_init_vtu(struct mv88e61xxphy_softc *sc)
{
 unsigned port;




 mv88e61xxphy_vtu_wait(sc);
 MV88E61XX_WRITE(sc, MV88E61XX_GLOBAL, MV88E61XX_GLOBAL_VTU_OP,
     MV88E61XX_GLOBAL_VTU_OP_BUSY | MV88E61XX_GLOBAL_VTU_OP_OP_FLUSH);




 for (port = 0; port < MV88E61XX_PORTS; port++) {
  struct mv88e61xxphy_port_softc *psc;

  psc = &sc->sc_ports[port];
  psc->sc_flags &= ~MV88E61XXPHY_PORT_FLAG_VTU_UPDATE;
  if (psc->sc_vlan == 0)
   continue;
  psc->sc_flags |= MV88E61XXPHY_PORT_FLAG_VTU_UPDATE;
 }




 for (port = 0; port < MV88E61XX_PORTS; port++) {
  struct mv88e61xxphy_port_softc *psc;

  psc = &sc->sc_ports[port];
  if ((psc->sc_flags & MV88E61XXPHY_PORT_FLAG_VTU_UPDATE) == 0)
   continue;
  mv88e61xxphy_vtu_load(sc, psc->sc_vlan);
 }




 mv88e61xxphy_vtu_wait(sc);
}
