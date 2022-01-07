
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ip17x_softc {int vlan_mode; int sc_dev; } ;




 int ip175c_hw_setup (struct ip17x_softc*) ;
 int ip17x_reset_vlans (struct ip17x_softc*,int) ;
 int ip17x_updatephy (int ,int,int,int,int) ;

__attribute__((used)) static int
ip175c_set_vlan_mode(struct ip17x_softc *sc, uint32_t mode)
{

 switch (mode) {
 case 129:

  ip17x_updatephy(sc->sc_dev, 30, 9, 0x80, 0x80);
  sc->vlan_mode = mode;
  break;
 case 128:
 default:

  ip17x_updatephy(sc->sc_dev, 30, 9, 0x80, 0);
  sc->vlan_mode = 128;
  break;
 }


 ip17x_reset_vlans(sc, sc->vlan_mode);


 ip175c_hw_setup(sc);

 return (0);
}
