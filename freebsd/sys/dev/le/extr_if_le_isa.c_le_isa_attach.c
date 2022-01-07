
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lance_softc {scalar_t__ sc_addr; int sc_mem; int * sc_supmedia; int * sc_mediastatus; int * sc_mediachange; int * sc_nocarrier; int * sc_hwintr; int * sc_hwinit; int * sc_hwreset; int sc_wrcsr; int sc_rdcsr; int sc_zerobuf; void* sc_copyfrombuf; void* sc_copytobuf; void* sc_copyfromdesc; void* sc_copytodesc; int * sc_enaddr; scalar_t__ sc_conf3; scalar_t__ sc_flags; int sc_memsize; } ;
struct TYPE_7__ {struct lance_softc lsc; } ;
struct le_isa_softc {int * sc_rres; int * sc_dres; int * sc_ires; int sc_pdmat; int sc_dmat; int sc_dmam; TYPE_4__ sc_am7990; int sc_ih; void* sc_rdp; void* sc_rap; } ;
typedef int device_t ;
typedef void* bus_size_t ;
struct TYPE_6__ {int macstride; void* macstart; void* rdp; void* rap; int iosize; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_24BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;


 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int LE_ISA_MEMSIZE ;
 int LE_LOCK_DESTROY (struct lance_softc*) ;
 int LE_LOCK_INIT (struct lance_softc*,int ) ;
 void* PCNET_RAP ;
 void* PCNET_RDP ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int am7990_config (TYPE_4__*,int ,int ) ;
 int am7990_detach (TYPE_4__*) ;
 int am7990_intr ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int ,int) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct lance_softc*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_read_1 (int *,void*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct lance_softc*,int *) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct le_isa_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int isa_dmacascade (int ) ;
 void* lance_copyfrombuf_contig ;
 void* lance_copytobuf_contig ;
 int lance_zerobuf_contig ;
 int le_isa_dma_callback ;
 int le_isa_ids ;
 TYPE_1__* le_isa_params ;
 int le_isa_probe_legacy (int ,TYPE_1__*) ;
 int le_isa_rdcsr ;
 int le_isa_wrcsr ;
 int nitems (TYPE_1__*) ;
 int rman_get_rid (int *) ;
 int rman_get_start (int *) ;

__attribute__((used)) static int
le_isa_attach(device_t dev)
{
 struct le_isa_softc *lesc;
 struct lance_softc *sc;
 bus_size_t macstart, rap, rdp;
 int error, i, j, macstride;

 lesc = device_get_softc(dev);
 sc = &lesc->sc_am7990.lsc;

 LE_LOCK_INIT(sc, device_get_nameunit(dev));

 j = 0;
 switch (ISA_PNP_PROBE(device_get_parent(dev), dev, le_isa_ids)) {
 case 0:
  lesc->sc_rres = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
      &j, RF_ACTIVE);
  rap = PCNET_RAP;
  rdp = PCNET_RDP;
  macstart = 0;
  macstride = 1;
  break;
 case 129:
  for (i = 0; i < nitems(le_isa_params); i++) {
   if (le_isa_probe_legacy(dev, &le_isa_params[i]) == 0) {
    lesc->sc_rres = bus_alloc_resource_anywhere(dev,
        SYS_RES_IOPORT, &j,
        le_isa_params[i].iosize, RF_ACTIVE);
    rap = le_isa_params[i].rap;
    rdp = le_isa_params[i].rdp;
    macstart = le_isa_params[i].macstart;
    macstride = le_isa_params[i].macstride;
    goto found;
   }
  }

 case 128:
 default:
  device_printf(dev, "cannot determine chip\n");
  error = 128;
  goto fail_mtx;
 }

 found:
 if (lesc->sc_rres == ((void*)0)) {
  device_printf(dev, "cannot allocate registers\n");
  error = 128;
  goto fail_mtx;
 }
 lesc->sc_rap = rap;
 lesc->sc_rdp = rdp;

 i = 0;
 if ((lesc->sc_dres = bus_alloc_resource_any(dev, SYS_RES_DRQ,
     &i, RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "cannot allocate DMA channel\n");
  error = 128;
  goto fail_rres;
 }

 i = 0;
 if ((lesc->sc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &i, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "cannot allocate interrupt\n");
  error = 128;
  goto fail_dres;
 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     1, 0,
     BUS_SPACE_MAXADDR_24BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &lesc->sc_pdmat);
 if (error != 0) {
  device_printf(dev, "cannot allocate parent DMA tag\n");
  goto fail_ires;
 }

 sc->sc_memsize = LE_ISA_MEMSIZE;




 error = bus_dma_tag_create(
     lesc->sc_pdmat,
     8, 0,
     BUS_SPACE_MAXADDR_24BIT,
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
  goto fail_pdtag;
 }

 error = bus_dmamem_alloc(lesc->sc_dmat, (void **)&sc->sc_mem,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT, &lesc->sc_dmam);
 if (error != 0) {
  device_printf(dev, "cannot allocate DMA buffer memory\n");
  goto fail_dtag;
 }

 sc->sc_addr = 0;
 error = bus_dmamap_load(lesc->sc_dmat, lesc->sc_dmam, sc->sc_mem,
     sc->sc_memsize, le_isa_dma_callback, sc, 0);
 if (error != 0 || sc->sc_addr == 0) {
  device_printf(dev, "cannot load DMA buffer map\n");
  goto fail_dmem;
 }

 isa_dmacascade(rman_get_start(lesc->sc_dres));

 sc->sc_flags = 0;
 sc->sc_conf3 = 0;




 for (i = 0; i < sizeof(sc->sc_enaddr); i++)
  sc->sc_enaddr[i] = bus_read_1(lesc->sc_rres,
      macstart + i * macstride);

 sc->sc_copytodesc = lance_copytobuf_contig;
 sc->sc_copyfromdesc = lance_copyfrombuf_contig;
 sc->sc_copytobuf = lance_copytobuf_contig;
 sc->sc_copyfrombuf = lance_copyfrombuf_contig;
 sc->sc_zerobuf = lance_zerobuf_contig;

 sc->sc_rdcsr = le_isa_rdcsr;
 sc->sc_wrcsr = le_isa_wrcsr;
 sc->sc_hwreset = ((void*)0);
 sc->sc_hwinit = ((void*)0);
 sc->sc_hwintr = ((void*)0);
 sc->sc_nocarrier = ((void*)0);
 sc->sc_mediachange = ((void*)0);
 sc->sc_mediastatus = ((void*)0);
 sc->sc_supmedia = ((void*)0);

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
 fail_pdtag:
 bus_dma_tag_destroy(lesc->sc_pdmat);
 fail_ires:
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(lesc->sc_ires), lesc->sc_ires);
 fail_dres:
 bus_release_resource(dev, SYS_RES_DRQ,
     rman_get_rid(lesc->sc_dres), lesc->sc_dres);
 fail_rres:
 bus_release_resource(dev, SYS_RES_IOPORT,
     rman_get_rid(lesc->sc_rres), lesc->sc_rres);
 fail_mtx:
 LE_LOCK_DESTROY(sc);
 return (error);
}
