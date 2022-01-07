
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int es_nvlangroups; int es_vlan_caps; int es_name; } ;
struct ksz8995ma_softc {int numports; int phymask; int cpuport; int media; int * ifp; int * ifname; int * miibus; int * portphy; scalar_t__ vlan_mode; int callout_tick; TYPE_1__ info; int sc_mtx; int sc_dev; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int ETHERSWITCH_VLAN_DOT1Q ;
 int ETHERSWITCH_VLAN_PORT ;
 int KSZ8995MA_CID1 ;
 int KSZ8995MA_GC3 ;
 int KSZ8995MA_MAX_PORT ;
 int KSZ8995MA_START ;
 int KSZ8995MA_VLAN_ENABLE ;
 int MTX_DEF ;
 int M_KSZ8995MA ;
 int M_WAITOK ;
 int M_ZERO ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int callout_init (int *,int ) ;
 int device_get_desc (int ) ;
 int device_get_name (int ) ;
 struct ksz8995ma_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int free (int *,int ) ;
 int ksz8995ma_attach_phys (struct ksz8995ma_softc*) ;
 int ksz8995ma_portvlanreset (int ) ;
 int ksz8995ma_readreg (int ,int ) ;
 int ksz8995ma_tick (struct ksz8995ma_softc*) ;
 int ksz8995ma_writereg (int ,int ,int) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int resource_int_value (int ,int ,char*,int*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
ksz8995ma_attach(device_t dev)
{
 struct ksz8995ma_softc *sc;
 int err, reg;

 err = 0;
 sc = device_get_softc(dev);

 sc->sc_dev = dev;
 mtx_init(&sc->sc_mtx, "ksz8995ma", ((void*)0), MTX_DEF);
 strlcpy(sc->info.es_name, device_get_desc(dev),
     sizeof(sc->info.es_name));


 sc->numports = KSZ8995MA_MAX_PORT;
 sc->phymask = (1 << (KSZ8995MA_MAX_PORT + 1)) - 1;
 sc->cpuport = -1;
 sc->media = 100;

 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "cpuport", &sc->cpuport);

 sc->info.es_nvlangroups = 16;
 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_PORT | ETHERSWITCH_VLAN_DOT1Q;

 sc->ifp = malloc(sizeof(struct ifnet *) * sc->numports, M_KSZ8995MA,
     M_WAITOK | M_ZERO);
 sc->ifname = malloc(sizeof(char *) * sc->numports, M_KSZ8995MA,
     M_WAITOK | M_ZERO);
 sc->miibus = malloc(sizeof(device_t *) * sc->numports, M_KSZ8995MA,
     M_WAITOK | M_ZERO);
 sc->portphy = malloc(sizeof(int) * sc->numports, M_KSZ8995MA,
     M_WAITOK | M_ZERO);

 if (sc->ifp == ((void*)0) || sc->ifname == ((void*)0) || sc->miibus == ((void*)0) ||
     sc->portphy == ((void*)0)) {
  err = ENOMEM;
  goto failed;
 }




 err = ksz8995ma_attach_phys(sc);
 if (err != 0)
  goto failed;

 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 err = bus_generic_attach(dev);
 if (err != 0)
  goto failed;

 callout_init(&sc->callout_tick, 0);

 ksz8995ma_tick(sc);


 sc->vlan_mode = 0;
 reg = ksz8995ma_readreg(dev, KSZ8995MA_GC3);
 ksz8995ma_writereg(dev, KSZ8995MA_GC3,
     reg & ~KSZ8995MA_VLAN_ENABLE);
 ksz8995ma_portvlanreset(dev);
 ksz8995ma_writereg(dev, KSZ8995MA_CID1, KSZ8995MA_START);

 return (0);

failed:
 if (sc->portphy != ((void*)0))
  free(sc->portphy, M_KSZ8995MA);
 if (sc->miibus != ((void*)0))
  free(sc->miibus, M_KSZ8995MA);
 if (sc->ifname != ((void*)0))
  free(sc->ifname, M_KSZ8995MA);
 if (sc->ifp != ((void*)0))
  free(sc->ifp, M_KSZ8995MA);

 return (err);
}
