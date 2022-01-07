
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct TYPE_2__ {int es_nvlangroups; int es_vlan_caps; int es_name; } ;
struct adm6996fc_softc {int numports; int phymask; int cpuport; int media; int * ifp; int * ifname; int * miibus; int * portphy; int callout_tick; TYPE_1__ info; int sc_mtx; int sc_dev; } ;
typedef int device_t ;


 int ENOMEM ;
 int ETHERSWITCH_VLAN_DOT1Q ;
 int ETHERSWITCH_VLAN_PORT ;
 int MTX_DEF ;
 int M_ADM6996FC ;
 int M_WAITOK ;
 int M_ZERO ;
 int adm6996fc_attach_phys (struct adm6996fc_softc*) ;
 int adm6996fc_tick (struct adm6996fc_softc*) ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int callout_init (int *,int ) ;
 int device_get_desc (int ) ;
 struct adm6996fc_softc* device_get_softc (int ) ;
 int free (int *,int ) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
adm6996fc_attach(device_t dev)
{
 struct adm6996fc_softc *sc;
 int err;

 err = 0;
 sc = device_get_softc(dev);

 sc->sc_dev = dev;
 mtx_init(&sc->sc_mtx, "adm6996fc", ((void*)0), MTX_DEF);
 strlcpy(sc->info.es_name, device_get_desc(dev),
     sizeof(sc->info.es_name));


 sc->numports = 6;
 sc->phymask = 0x1f;
 sc->cpuport = 5;
 sc->media = 100;

 sc->info.es_nvlangroups = 16;
 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_PORT | ETHERSWITCH_VLAN_DOT1Q;

 sc->ifp = malloc(sizeof(struct ifnet *) * sc->numports, M_ADM6996FC,
     M_WAITOK | M_ZERO);
 sc->ifname = malloc(sizeof(char *) * sc->numports, M_ADM6996FC,
     M_WAITOK | M_ZERO);
 sc->miibus = malloc(sizeof(device_t *) * sc->numports, M_ADM6996FC,
     M_WAITOK | M_ZERO);
 sc->portphy = malloc(sizeof(int) * sc->numports, M_ADM6996FC,
     M_WAITOK | M_ZERO);

 if (sc->ifp == ((void*)0) || sc->ifname == ((void*)0) || sc->miibus == ((void*)0) ||
     sc->portphy == ((void*)0)) {
  err = ENOMEM;
  goto failed;
 }




 err = adm6996fc_attach_phys(sc);
 if (err != 0)
  goto failed;

 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 err = bus_generic_attach(dev);
 if (err != 0)
  goto failed;

 callout_init(&sc->callout_tick, 0);

 adm6996fc_tick(sc);

 return (0);

failed:
 if (sc->portphy != ((void*)0))
  free(sc->portphy, M_ADM6996FC);
 if (sc->miibus != ((void*)0))
  free(sc->miibus, M_ADM6996FC);
 if (sc->ifname != ((void*)0))
  free(sc->ifname, M_ADM6996FC);
 if (sc->ifp != ((void*)0))
  free(sc->ifp, M_ADM6996FC);

 return (err);
}
