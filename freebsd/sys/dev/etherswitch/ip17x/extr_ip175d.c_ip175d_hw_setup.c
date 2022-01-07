
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ip17x_vlan {int vlanid; int ports; } ;
struct ip17x_softc {scalar_t__ vlan_mode; int addtag; int striptag; int numports; int* pvid; int sc_dev; struct ip17x_vlan* vlan; } ;


 int ETHERSWITCH_VID_MASK ;
 int ETHERSWITCH_VID_VALID ;
 int IP17X_MAX_VLANS ;
 int MII_NPHY ;
 int ip17x_writephy (int ,int,int,int) ;

__attribute__((used)) static int
ip175d_hw_setup(struct ip17x_softc *sc)
{
 struct ip17x_vlan *v;
 uint32_t ports[IP17X_MAX_VLANS];
 uint32_t addtag[IP17X_MAX_VLANS];
 uint32_t striptag[IP17X_MAX_VLANS];
 uint32_t vlan_mask;
 int i, j;

 vlan_mask = 0;
 for (i = 0; i < IP17X_MAX_VLANS; i++) {

  ports[i] = 0;
  addtag[i] = 0;
  striptag[i] = 0;

  v = &sc->vlan[i];
  if ((v->vlanid & ETHERSWITCH_VID_VALID) == 0 ||
      sc->vlan_mode == 0) {

   ip17x_writephy(sc->sc_dev, 22, 14 + i, i + 1);
   ports[i] = 0x3f;
   continue;
  }

  vlan_mask |= (1 << i);
  ports[i] = v->ports;


  ip17x_writephy(sc->sc_dev, 22, 14 + i,
      v->vlanid & ETHERSWITCH_VID_MASK);

  for (j = 0; j < MII_NPHY; j++) {
   if ((ports[i] & (1 << j)) == 0)
    continue;
   if (sc->addtag & (1 << j))
    addtag[i] |= (1 << j);
   if (sc->striptag & (1 << j))
    striptag[i] |= (1 << j);
  }
 }


 for (i = 0; i < IP17X_MAX_VLANS / 2; i++) {
  ip17x_writephy(sc->sc_dev, 23, i,
      ports[2 * i] | (ports[2 * i + 1] << 8));
  ip17x_writephy(sc->sc_dev, 23, i + 8,
      addtag[2 * i] | (addtag[2 * i + 1] << 8));
  ip17x_writephy(sc->sc_dev, 23, i + 16,
      striptag[2 * i] | (striptag[2 * i + 1] << 8));
 }


 ip17x_writephy(sc->sc_dev, 22, 10, vlan_mask);


 for (i = 0; i < sc->numports; i++)
  ip17x_writephy(sc->sc_dev, 22, 4 + i, sc->pvid[i]);

 return (0);
}
