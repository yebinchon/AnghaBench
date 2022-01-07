
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lance_softc {int sc_conf3; int sc_defaultmedia; int sc_nsupmedia; int * sc_supmedia; int * sc_mediastatus; int * sc_mediachange; int * sc_nocarrier; int * sc_hwintr; int * sc_hwinit; int * sc_hwreset; int sc_wrcsr; int sc_rdcsr; int sc_zerobuf; int sc_copyfrombuf; int sc_copytobuf; int sc_copyfromdesc; int sc_copytodesc; int sc_enaddr; scalar_t__ sc_flags; int sc_memsize; scalar_t__ sc_addr; } ;
struct TYPE_3__ {struct lance_softc lsc; } ;
struct le_lebuffer_softc {int * sc_bres; int * sc_rres; int * sc_ires; TYPE_1__ sc_am7990; int sc_ih; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int LE_C3_ACON ;
 int LE_C3_BCON ;
 int LE_C3_BSWP ;
 int LE_LOCK_DESTROY (struct lance_softc*) ;
 int LE_LOCK_INIT (struct lance_softc*,int ) ;
 int NLEMEDIA ;
 int OF_getetheraddr (int ,int ) ;
 int OF_getprop (int ,char*,int*,int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int am7990_config (TYPE_1__*,int ,int ) ;
 int am7990_detach (TYPE_1__*) ;
 int am7990_intr ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct lance_softc*,int *) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct le_lebuffer_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int le_lebuffer_copyfrombuf ;
 int le_lebuffer_copyfromdesc ;
 int le_lebuffer_copytobuf ;
 int le_lebuffer_copytodesc ;
 int * le_lebuffer_media ;
 int le_lebuffer_rdcsr ;
 int le_lebuffer_wrcsr ;
 int le_lebuffer_zerobuf ;
 int ofw_bus_get_node (int ) ;
 int rman_get_rid (int *) ;
 int rman_get_size (int *) ;

__attribute__((used)) static int
le_lebuffer_attach(device_t dev)
{
 struct le_lebuffer_softc *lesc;
 struct lance_softc *sc;
 int error, i;

 lesc = device_get_softc(dev);
 sc = &lesc->sc_am7990.lsc;

 LE_LOCK_INIT(sc, device_get_nameunit(dev));





 i = 0;
 lesc->sc_bres = bus_alloc_resource_any(device_get_parent(dev),
     SYS_RES_MEMORY, &i, RF_ACTIVE);
 if (lesc->sc_bres == ((void*)0)) {
  device_printf(dev, "cannot allocate LANCE buffer\n");
  error = ENXIO;
  goto fail_mtx;
 }


 i = 0;
 lesc->sc_rres = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &i, RF_ACTIVE);
 if (lesc->sc_rres == ((void*)0)) {
  device_printf(dev, "cannot allocate LANCE registers\n");
  error = ENXIO;
  goto fail_bres;
 }


 i = 0;
 if ((lesc->sc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &i, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "cannot allocate interrupt\n");
  error = ENXIO;
  goto fail_rres;
 }





 sc->sc_addr = 0;
 sc->sc_memsize = rman_get_size(lesc->sc_bres);
 sc->sc_flags = 0;


 if (OF_getprop(ofw_bus_get_node(dev), "busmaster-regval",
     &sc->sc_conf3, sizeof(sc->sc_conf3)) == -1)
  sc->sc_conf3 = LE_C3_ACON | LE_C3_BCON;





 sc->sc_conf3 &= ~LE_C3_BSWP;

 OF_getetheraddr(dev, sc->sc_enaddr);

 sc->sc_copytodesc = le_lebuffer_copytodesc;
 sc->sc_copyfromdesc = le_lebuffer_copyfromdesc;
 sc->sc_copytobuf = le_lebuffer_copytobuf;
 sc->sc_copyfrombuf = le_lebuffer_copyfrombuf;
 sc->sc_zerobuf = le_lebuffer_zerobuf;

 sc->sc_rdcsr = le_lebuffer_rdcsr;
 sc->sc_wrcsr = le_lebuffer_wrcsr;
 sc->sc_hwreset = ((void*)0);
 sc->sc_hwinit = ((void*)0);
 sc->sc_hwintr = ((void*)0);
 sc->sc_nocarrier = ((void*)0);
 sc->sc_mediachange = ((void*)0);
 sc->sc_mediastatus = ((void*)0);
 sc->sc_supmedia = le_lebuffer_media;
 sc->sc_nsupmedia = NLEMEDIA;
 sc->sc_defaultmedia = le_lebuffer_media[0];

 error = am7990_config(&lesc->sc_am7990, device_get_name(dev),
     device_get_unit(dev));
 if (error != 0) {
  device_printf(dev, "cannot attach Am7990\n");
  goto fail_ires;
 }

 error = bus_setup_intr(dev, lesc->sc_ires, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), am7990_intr, sc, &lesc->sc_ih);
 if (error != 0) {
  device_printf(dev, "cannot set up interrupt\n");
  goto fail_am7990;
 }

 return (0);

 fail_am7990:
 am7990_detach(&lesc->sc_am7990);
 fail_ires:
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(lesc->sc_ires), lesc->sc_ires);
 fail_rres:
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(lesc->sc_rres), lesc->sc_rres);
 fail_bres:
 bus_release_resource(device_get_parent(dev), SYS_RES_MEMORY,
     rman_get_rid(lesc->sc_bres), lesc->sc_bres);
 fail_mtx:
 LE_LOCK_DESTROY(sc);
 return (error);
}
