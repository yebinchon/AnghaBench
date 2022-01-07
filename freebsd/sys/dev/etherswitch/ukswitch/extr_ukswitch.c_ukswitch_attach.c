
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ es_nvlangroups; int es_name; } ;
struct ukswitch_softc {int numports; int phymask; int phyoffset; int cpuport; int media; int callout_tick; void* portphy; void* miibus; void* ifname; void* ifp; TYPE_1__ info; int sc_mtx; int sc_dev; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int MTX_DEF ;
 int M_UKSWITCH ;
 int M_WAITOK ;
 int M_ZERO ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int callout_init (int *,int ) ;
 int device_get_desc (int ) ;
 int device_get_name (int ) ;
 struct ukswitch_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int resource_int_value (int ,int ,char*,int*) ;
 int strlcpy (int ,int ,int) ;
 int ukswitch_attach_phys (struct ukswitch_softc*) ;
 int ukswitch_tick (struct ukswitch_softc*) ;

__attribute__((used)) static int
ukswitch_attach(device_t dev)
{
 struct ukswitch_softc *sc;
 int err = 0;

 sc = device_get_softc(dev);

 sc->sc_dev = dev;
 mtx_init(&sc->sc_mtx, "ukswitch", ((void*)0), MTX_DEF);
 strlcpy(sc->info.es_name, device_get_desc(dev),
     sizeof(sc->info.es_name));


 sc->numports = 6;
 sc->phymask = 0x0f;
 sc->phyoffset = 0;
 sc->cpuport = -1;
 sc->media = 100;

 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "numports", &sc->numports);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "phymask", &sc->phymask);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "phyoffset", &sc->phyoffset);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "cpuport", &sc->cpuport);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     "media", &sc->media);


 if (sc->media != 100 && sc->media != 1000)
  sc->media = 100;

 if (sc->cpuport != -1)

  sc->phymask |= (1 << sc->cpuport);


 sc->info.es_nvlangroups = 0;

 sc->ifp = malloc(sizeof(struct ifnet *) * sc->numports, M_UKSWITCH,
     M_WAITOK | M_ZERO);
 sc->ifname = malloc(sizeof(char *) * sc->numports, M_UKSWITCH,
     M_WAITOK | M_ZERO);
 sc->miibus = malloc(sizeof(device_t *) * sc->numports, M_UKSWITCH,
     M_WAITOK | M_ZERO);
 sc->portphy = malloc(sizeof(int) * sc->numports, M_UKSWITCH,
     M_WAITOK | M_ZERO);




 err = ukswitch_attach_phys(sc);
 if (err != 0)
  return (err);

 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 err = bus_generic_attach(dev);
 if (err != 0)
  return (err);

 callout_init(&sc->callout_tick, 0);

 ukswitch_tick(sc);

 return (err);
}
