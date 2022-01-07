
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17x_softc {int vlan_mode; } ;




 int ip175c_dot1q_vlan_setup (struct ip17x_softc*) ;
 int ip175c_port_vlan_setup (struct ip17x_softc*) ;

__attribute__((used)) static int
ip175c_hw_setup(struct ip17x_softc *sc)
{

 switch (sc->vlan_mode) {
 case 128:
  return (ip175c_port_vlan_setup(sc));
  break;
 case 129:
  return (ip175c_dot1q_vlan_setup(sc));
  break;
 }
 return (-1);
}
