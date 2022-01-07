
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lsi64854_softc {int sc_parent_dmat; struct le_dma_softc* sc_client; } ;
struct lance_softc {int sc_addr; int sc_conf3; int sc_mem; int sc_nocarrier; int sc_hwintr; int sc_hwreset; int sc_wrcsr; int sc_rdcsr; int sc_zerobuf; void* sc_copyfrombuf; void* sc_copytobuf; void* sc_copyfromdesc; void* sc_copytodesc; int sc_enaddr; int sc_defaultmedia; int sc_nsupmedia; int * sc_supmedia; int sc_mediastatus; int sc_mediachange; scalar_t__ sc_flags; int sc_memsize; } ;
struct TYPE_3__ {struct lance_softc lsc; } ;
struct le_dma_softc {int sc_laddr; int * sc_rres; int * sc_ires; int sc_dmat; int sc_dmam; TYPE_1__ sc_am7990; int sc_ih; struct lsi64854_softc* sc_dma; } ;
typedef int device_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int LEDMA_ALIGNMENT ;
 int LEDMA_BOUNDARY ;
 int LEDMA_MEMSIZE ;
 int LE_C3_ACON ;
 int LE_C3_BCON ;
 int LE_C3_BSWP ;
 int LE_LOCK_DESTROY (struct lance_softc*) ;
 int LE_LOCK_INIT (struct lance_softc*,int ) ;
 int OF_getetheraddr (int ,int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int am7990_config (TYPE_1__*,int ,int ) ;
 int am7990_detach (TYPE_1__*) ;
 int am7990_intr ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct le_dma_softc*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct lance_softc*,int *) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct le_dma_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 void* lance_copyfrombuf_contig ;
 void* lance_copytobuf_contig ;
 int lance_zerobuf_contig ;
 int le_dma_dma_callback ;
 int le_dma_hwintr ;
 int le_dma_hwreset ;
 int le_dma_nocarrier ;
 int le_dma_rdcsr ;
 int * le_dma_supmedia ;
 int le_dma_supmediachange ;
 int le_dma_supmediastatus ;
 int le_dma_wrcsr ;
 int lsi64854_attach (struct lsi64854_softc*) ;
 int lsi64854_detach (struct lsi64854_softc*) ;
 int nitems (int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
le_dma_attach(device_t dev)
{
 struct le_dma_softc *lesc;
 struct lsi64854_softc *dma;
 struct lance_softc *sc;
 int error, i;

 lesc = device_get_softc(dev);
 sc = &lesc->sc_am7990.lsc;

 LE_LOCK_INIT(sc, device_get_nameunit(dev));





 dma = (struct lsi64854_softc *)device_get_softc(device_get_parent(dev));
 lesc->sc_dma = dma;
 lesc->sc_dma->sc_client = lesc;

 i = 0;
 lesc->sc_rres = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &i, RF_ACTIVE);
 if (lesc->sc_rres == ((void*)0)) {
  device_printf(dev, "cannot allocate registers\n");
  error = ENXIO;
  goto fail_mtx;
 }

 i = 0;
 if ((lesc->sc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &i, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "cannot allocate interrupt\n");
  error = ENXIO;
  goto fail_rres;
 }


 error = lsi64854_attach(dma);
 if (error != 0) {
  device_printf(dev, "lsi64854_attach failed\n");
  goto fail_ires;
 }

 sc->sc_memsize = LEDMA_MEMSIZE;
 error = bus_dma_tag_create(
     dma->sc_parent_dmat,
     LEDMA_ALIGNMENT,
     LEDMA_BOUNDARY,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sc->sc_memsize,
     1,
     sc->sc_memsize,
     0,
     ((void*)0), ((void*)0),
     &lesc->sc_dmat);
 if (error != 0) {
  device_printf(dev, "cannot allocate buffer DMA tag\n");
  goto fail_lsi;
 }

 error = bus_dmamem_alloc(lesc->sc_dmat, (void **)&sc->sc_mem,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT, &lesc->sc_dmam);
 if (error != 0) {
  device_printf(dev, "cannot allocate DMA buffer memory\n");
  goto fail_dtag;
 }

 lesc->sc_laddr = 0;
 error = bus_dmamap_load(lesc->sc_dmat, lesc->sc_dmam, sc->sc_mem,
     sc->sc_memsize, le_dma_dma_callback, lesc, 0);
 if (error != 0 || lesc->sc_laddr == 0) {
  device_printf(dev, "cannot load DMA buffer map\n");
  goto fail_dmem;
 }

 sc->sc_addr = lesc->sc_laddr & 0xffffff;
 sc->sc_flags = 0;
 sc->sc_conf3 = LE_C3_BSWP | LE_C3_ACON | LE_C3_BCON;

 sc->sc_mediachange = le_dma_supmediachange;
 sc->sc_mediastatus = le_dma_supmediastatus;
 sc->sc_supmedia = le_dma_supmedia;
 sc->sc_nsupmedia = nitems(le_dma_supmedia);
 sc->sc_defaultmedia = le_dma_supmedia[0];

 OF_getetheraddr(dev, sc->sc_enaddr);

 sc->sc_copytodesc = lance_copytobuf_contig;
 sc->sc_copyfromdesc = lance_copyfrombuf_contig;
 sc->sc_copytobuf = lance_copytobuf_contig;
 sc->sc_copyfrombuf = lance_copyfrombuf_contig;
 sc->sc_zerobuf = lance_zerobuf_contig;

 sc->sc_rdcsr = le_dma_rdcsr;
 sc->sc_wrcsr = le_dma_wrcsr;
 sc->sc_hwreset = le_dma_hwreset;
 sc->sc_hwintr = le_dma_hwintr;
 sc->sc_nocarrier = le_dma_nocarrier;

 error = am7990_config(&lesc->sc_am7990, device_get_name(dev),
     device_get_unit(dev));
 if (error != 0) {
  device_printf(dev, "cannot attach Am7990\n");
  goto fail_dmap;
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
 fail_dmap:
 bus_dmamap_unload(lesc->sc_dmat, lesc->sc_dmam);
 fail_dmem:
 bus_dmamem_free(lesc->sc_dmat, sc->sc_mem, lesc->sc_dmam);
 fail_dtag:
 bus_dma_tag_destroy(lesc->sc_dmat);
 fail_lsi:
 lsi64854_detach(dma);
 fail_ires:
 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(lesc->sc_ires),
     lesc->sc_ires);
 fail_rres:
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(lesc->sc_rres),
     lesc->sc_rres);
 fail_mtx:
 LE_LOCK_DESTROY(sc);
 return (error);
}
