
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* ip17x_set_vlan_mode ) (struct ip17x_softc*,int ) ;int (* ip17x_reset ) (struct ip17x_softc*) ;} ;
struct TYPE_3__ {int es_nvlangroups; int es_name; } ;
struct ip17x_softc {int phymask; int media; int cpuport; int numports; int callout_tick; scalar_t__ miipoll; TYPE_2__ hal; void* portphy; void* miibus; void* pvid; void* ifp; TYPE_1__ info; int sc_mtx; int sc_dev; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int ETHERSWITCH_VLAN_PORT ;
 int IP175C ;
 int IP175D ;
 scalar_t__ IP17X_IS_SWITCH (struct ip17x_softc*,int ) ;
 int IP17X_MAX_VLANS ;
 int MTX_DEF ;
 int M_IP17X ;
 int M_WAITOK ;
 int M_ZERO ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int callout_init (int *,int ) ;
 int device_get_desc (int ) ;
 int device_get_name (int ) ;
 struct ip17x_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int ip175c_attach (struct ip17x_softc*) ;
 int ip175d_attach (struct ip17x_softc*) ;
 int ip17x_attach_phys (struct ip17x_softc*) ;
 int ip17x_tick (struct ip17x_softc*) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int resource_int_value (int ,int ,char*,int*) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (struct ip17x_softc*) ;
 int stub2 (struct ip17x_softc*,int ) ;

__attribute__((used)) static int
ip17x_attach(device_t dev)
{
 struct ip17x_softc *sc;
 int err;

 sc = device_get_softc(dev);

 sc->sc_dev = dev;
 mtx_init(&sc->sc_mtx, "ip17x", ((void*)0), MTX_DEF);
 strlcpy(sc->info.es_name, device_get_desc(dev),
     sizeof(sc->info.es_name));


 sc->phymask = 0x0f;
 sc->media = 100;

 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "phymask", &sc->phymask);


 sc->info.es_nvlangroups = IP17X_MAX_VLANS;


 if (IP17X_IS_SWITCH(sc, IP175C))
  ip175c_attach(sc);
 else if (IP17X_IS_SWITCH(sc, IP175D))
  ip175d_attach(sc);
 else

  return (ENXIO);


 sc->phymask |= (1 << sc->cpuport);

 sc->ifp = malloc(sizeof(struct ifnet *) * sc->numports, M_IP17X,
     M_WAITOK | M_ZERO);
 sc->pvid = malloc(sizeof(uint32_t) * sc->numports, M_IP17X,
     M_WAITOK | M_ZERO);
 sc->miibus = malloc(sizeof(device_t *) * sc->numports, M_IP17X,
     M_WAITOK | M_ZERO);
 sc->portphy = malloc(sizeof(int) * sc->numports, M_IP17X,
     M_WAITOK | M_ZERO);


 sc->hal.ip17x_reset(sc);




 err = ip17x_attach_phys(sc);
 if (err != 0)
  return (err);





 sc->hal.ip17x_set_vlan_mode(sc, ETHERSWITCH_VLAN_PORT);

 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 err = bus_generic_attach(dev);
 if (err != 0)
  return (err);

 if (sc->miipoll) {
  callout_init(&sc->callout_tick, 0);

  ip17x_tick(sc);
 }

 return (0);
}
