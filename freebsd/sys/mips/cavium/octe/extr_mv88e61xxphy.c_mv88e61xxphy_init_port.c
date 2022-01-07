
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e61xxphy_softc {int dummy; } ;
struct mv88e61xxphy_port_softc {int sc_port; int sc_domain; int sc_priority; int sc_vlan; struct mv88e61xxphy_softc* sc_switch; } ;


 int ETHERTYPE_VLAN ;
 int MV88E61XX_HOST_PORT ;
 int MV88E61XX_PORTS ;
 int MV88E61XX_PORT_CONTROL ;
 int MV88E61XX_PORT_CONTROL2 ;
 int MV88E61XX_PORT_ETHER_PROTO ;
 int MV88E61XX_PORT_FILTER ;
 int MV88E61XX_PORT_FILTER_8021Q_SECURE ;
 int MV88E61XX_PORT_FILTER_DISCARD_TAGGED ;
 int MV88E61XX_PORT_FILTER_DISCARD_UNTAGGED ;
 int MV88E61XX_PORT_FILTER_MAP_DEST ;
 int MV88E61XX_PORT_FORCE_MAC ;
 int MV88E61XX_PORT_PAUSE_CONTROL ;
 int MV88E61XX_PORT_PROVIDER_PROTO ;
 int MV88E61XX_PORT_VLAN ;
 int MV88E61XX_PORT_VLAN_MAP ;
 int MV88E61XX_WRITE_PORT (struct mv88e61xxphy_port_softc*,int ,int) ;

__attribute__((used)) static void
mv88e61xxphy_init_port(struct mv88e61xxphy_port_softc *psc)
{
 struct mv88e61xxphy_softc *sc;
 unsigned allow_mask;

 sc = psc->sc_switch;


 if (psc->sc_port != MV88E61XX_HOST_PORT) {

  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_FORCE_MAC, 0x0003);
 } else {

  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_FORCE_MAC, 0x003e);
 }


 MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_PAUSE_CONTROL, 0x0000);


 if (psc->sc_port != MV88E61XX_HOST_PORT) {
  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_CONTROL, 0x04bc);
 } else {




  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_CONTROL, 0x063f);
 }

 if (psc->sc_port != MV88E61XX_HOST_PORT) {

  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_CONTROL2, 0x0000);
 } else {

  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_CONTROL2, 0x8000);
 }
 if (psc->sc_port != MV88E61XX_HOST_PORT) {
  allow_mask = 1 << MV88E61XX_HOST_PORT;
 } else {
  allow_mask = (1 << MV88E61XX_PORTS) - 1;
  allow_mask &= ~(1 << MV88E61XX_HOST_PORT);
 }
 MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_VLAN_MAP,
     (psc->sc_domain << 12) | allow_mask);


 MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_VLAN,
     (psc->sc_priority << 14) | psc->sc_vlan);

 if (psc->sc_port == MV88E61XX_HOST_PORT) {

  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_PROVIDER_PROTO,
      ETHERTYPE_VLAN);


  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_ETHER_PROTO,
      ETHERTYPE_VLAN);


  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_FILTER,
      MV88E61XX_PORT_FILTER_MAP_DEST |
      MV88E61XX_PORT_FILTER_8021Q_SECURE |
      MV88E61XX_PORT_FILTER_DISCARD_UNTAGGED);
 } else {

  MV88E61XX_WRITE_PORT(psc, MV88E61XX_PORT_FILTER,
      MV88E61XX_PORT_FILTER_MAP_DEST |
      MV88E61XX_PORT_FILTER_DISCARD_TAGGED);
 }
}
