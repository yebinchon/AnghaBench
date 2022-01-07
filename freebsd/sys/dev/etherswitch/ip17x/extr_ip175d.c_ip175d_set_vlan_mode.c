
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ip17x_softc {int vlan_mode; int sc_dev; } ;




 int ip175d_hw_setup (struct ip17x_softc*) ;
 int ip17x_reset_vlans (struct ip17x_softc*,scalar_t__) ;
 int ip17x_updatephy (int ,int,int,int,int) ;

__attribute__((used)) static int
ip175d_set_vlan_mode(struct ip17x_softc *sc, uint32_t mode)
{

 switch (mode) {
 case 129:





  ip17x_updatephy(sc->sc_dev, 22, 0, 0x3fff, 0x003f);
  sc->vlan_mode = mode;
  break;
 case 128:
  sc->vlan_mode = mode;

 default:




  ip17x_updatephy(sc->sc_dev, 22, 0, 0xbfff, 0x8000);
  sc->vlan_mode = 0;
  break;
 }

 if (sc->vlan_mode != 0) {





  ip17x_updatephy(sc->sc_dev, 22, 1, 0x0fff, 0x0c3f);


  ip17x_updatephy(sc->sc_dev, 22, 2, 0x0fff, 0x0000);
 } else {
  ip17x_updatephy(sc->sc_dev, 22, 1, 0x0fff, 0x043f);
  ip17x_updatephy(sc->sc_dev, 22, 2, 0x0fff, 0x0020);
 }


 ip17x_reset_vlans(sc, sc->vlan_mode);


 ip175d_hw_setup(sc);

 return (0);
}
