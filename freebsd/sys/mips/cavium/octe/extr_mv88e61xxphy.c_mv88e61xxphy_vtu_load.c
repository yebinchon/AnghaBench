
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mv88e61xxphy_softc {struct mv88e61xxphy_port_softc* sc_ports; } ;
struct mv88e61xxphy_port_softc {int sc_vlan; scalar_t__ sc_port; int sc_flags; } ;


 int MV88E61XXPHY_PORT_FLAG_VTU_UPDATE ;
 int MV88E61XXPHY_VTU_DISCARDED ;
 int MV88E61XXPHY_VTU_TAGGED ;
 int MV88E61XXPHY_VTU_UNTAGGED ;
 int MV88E61XX_GLOBAL ;
 int MV88E61XX_GLOBAL_VTU_OP ;
 int MV88E61XX_GLOBAL_VTU_OP_BUSY ;
 int MV88E61XX_GLOBAL_VTU_OP_OP_VTU_LOAD ;
 int MV88E61XX_GLOBAL_VTU_VID ;
 int MV88E61XX_GLOBAL_VTU_VID_VALID ;
 scalar_t__ MV88E61XX_HOST_PORT ;
 unsigned int MV88E61XX_PORTS ;
 int MV88E61XX_WRITE (struct mv88e61xxphy_softc*,int ,int ,int) ;
 int mv88e61xxphy_vtu_set_membership (struct mv88e61xxphy_softc*,unsigned int,int ) ;
 int mv88e61xxphy_vtu_wait (struct mv88e61xxphy_softc*) ;

__attribute__((used)) static void
mv88e61xxphy_vtu_load(struct mv88e61xxphy_softc *sc, uint16_t vid)
{
 unsigned port;




 mv88e61xxphy_vtu_wait(sc);




 MV88E61XX_WRITE(sc, MV88E61XX_GLOBAL, MV88E61XX_GLOBAL_VTU_VID,
     MV88E61XX_GLOBAL_VTU_VID_VALID | vid);




 for (port = 0; port < MV88E61XX_PORTS; port++) {
  struct mv88e61xxphy_port_softc *psc;

  psc = &sc->sc_ports[port];
  if (psc->sc_vlan == vid) {



   psc->sc_flags &= ~MV88E61XXPHY_PORT_FLAG_VTU_UPDATE;
   mv88e61xxphy_vtu_set_membership(sc, port, MV88E61XXPHY_VTU_UNTAGGED);
  } else if (psc->sc_port == MV88E61XX_HOST_PORT) {



   mv88e61xxphy_vtu_set_membership(sc, port, MV88E61XXPHY_VTU_TAGGED);
  } else {



   mv88e61xxphy_vtu_set_membership(sc, port, MV88E61XXPHY_VTU_DISCARDED);
  }
 }




 MV88E61XX_WRITE(sc, MV88E61XX_GLOBAL, MV88E61XX_GLOBAL_VTU_OP,
     MV88E61XX_GLOBAL_VTU_OP_BUSY |
     MV88E61XX_GLOBAL_VTU_OP_OP_VTU_LOAD);
}
