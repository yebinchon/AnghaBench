
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ip17x_vlan {int ports; } ;
struct TYPE_2__ {int es_nports; } ;
struct ip17x_softc {int cpuport; int numports; int* portphy; int sc_dev; struct ip17x_vlan* vlan; TYPE_1__ info; } ;
typedef int reg ;
typedef int ports ;


 int IP175X_NUM_PORTS ;
 int KASSERT (int,char*) ;
 int ip17x_updatephy (int ,int,int,int,int) ;
 int ip17x_writephy (int ,int,int,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int
ip175c_port_vlan_setup(struct ip17x_softc *sc)
{
 struct ip17x_vlan *v;
 uint32_t ports[IP175X_NUM_PORTS], reg[IP175X_NUM_PORTS/2];
 int i, err, phy;

 KASSERT(sc->cpuport == 5, ("cpuport != 5 not supported for IP175C"));
 KASSERT(sc->numports == 6, ("numports != 6 not supported for IP175C"));


 memset(ports, 0, sizeof(ports));
 for (i = 0; i < sc->info.es_nports; i++) {
  phy = sc->portphy[i];
  v = &sc->vlan[i];
  ports[phy] = v->ports;
 }


 for (i = 0; i < sc->numports; i++) {
  if (ports[i] & (1 << sc->cpuport)) {
   ports[i] |= (1 << 7);
   ports[i] &= ~(1 << sc->cpuport);
  }
 }


 memset(reg, 0, sizeof(reg));
 for (i = 0; i < (sc->numports / 2); i++)
  reg[i] = ports[i * 2] << 8 | ports[i * 2 + 1];


 err = ip17x_writephy(sc->sc_dev, 29, 19, reg[0]);
 if (err == 0)
  err = ip17x_writephy(sc->sc_dev, 29, 20, reg[1]);
 if (err == 0)
  err = ip17x_updatephy(sc->sc_dev, 29, 21, 0xff00, reg[2]);
 if (err == 0)
  err = ip17x_updatephy(sc->sc_dev, 30, 18, 0x00ff, reg[2]);
 return (err);
}
