
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct hifn_softc {int sc_flags; int sc_pllconfig; scalar_t__ sc_st0; scalar_t__ sc_sh0; scalar_t__ sc_st1; scalar_t__ sc_sh1; int sc_drammodel; int sc_ramsize; scalar_t__ sc_cid; int sc_mtx; int * sc_bar0res; int * sc_bar1res; int sc_dmat; int sc_dmamap; struct hifn_dma* sc_dma; int * sc_irq; int sc_intrhand; int sc_tickto; int sc_dev; int sc_dma_physaddr; void* sc_bar1_lastreg; void* sc_bar0_lastreg; } ;
struct hifn_session {int dummy; } ;
struct hifn_dma {int dummy; } ;
typedef int device_t ;
typedef struct hifn_dma* caddr_t ;
typedef void* bus_size_t ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTO_3DES_CBC ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_ARC4 ;
 int CRYPTO_DES_CBC ;
 int CRYPTO_MD5 ;
 int CRYPTO_MD5_HMAC ;
 int CRYPTO_SHA1 ;
 int CRYPTO_SHA1_HMAC ;
 int ENXIO ;
 int HIFN_0_PUCNFG ;
 int HIFN_0_PUSTAT ;
 int HIFN_1_DMA_CNFG ;
 int HIFN_1_REVID ;
 int HIFN_BAR0 ;
 int HIFN_BAR1 ;
 int HIFN_DMACNFG_DMARESET ;
 int HIFN_DMACNFG_MODE ;
 int HIFN_DMACNFG_MSTRESET ;
 int HIFN_HAS_AES ;
 int HIFN_HAS_PUBLIC ;
 int HIFN_HAS_RNG ;
 int HIFN_IS_7811 ;
 int HIFN_IS_7956 ;
 int HIFN_MAX_DMALEN ;
 int HIFN_MAX_SEGLEN ;
 int HIFN_PLL_ND ;
 int HIFN_PLL_REF_SEL ;
 int HIFN_PUCNFG_CHIPID ;
 int HIFN_PUSTAT_CHIPENA ;


 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int KASSERT (int,char*) ;
 int MAX_SCATTER ;
 int MTX_DEF ;
 scalar_t__ PCI_PRODUCT_HIFN_7811 ;
 scalar_t__ PCI_PRODUCT_HIFN_7951 ;
 scalar_t__ PCI_PRODUCT_HIFN_7955 ;
 scalar_t__ PCI_PRODUCT_HIFN_7956 ;
 scalar_t__ PCI_PRODUCT_NETSEC_7751 ;
 scalar_t__ PCI_VENDOR_HIFN ;
 scalar_t__ PCI_VENDOR_NETSEC ;
 int READ_REG_0 (struct hifn_softc*,int ) ;
 int READ_REG_1 (struct hifn_softc*,int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int WRITE_REG_0 (struct hifn_softc*,int ,int) ;
 int WRITE_REG_1 (struct hifn_softc*,int ,int) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 scalar_t__ bus_dmamap_load (int ,int ,struct hifn_dma*,int,int ,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,struct hifn_dma*,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct hifn_softc*,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int bzero (struct hifn_dma*,int) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,struct hifn_softc*) ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 int crypto_register (scalar_t__,int ,int ,int ) ;
 int device_get_nameunit (int ) ;
 struct hifn_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hifn_dmamap_cb ;
 int hifn_dramsize (struct hifn_softc*) ;
 scalar_t__ hifn_enable_crypto (struct hifn_softc*) ;
 int hifn_getpllconfig (int ,int*) ;
 int hifn_init_dma (struct hifn_softc*) ;
 int hifn_init_pci_registers (struct hifn_softc*) ;
 int hifn_init_pubrng (struct hifn_softc*) ;
 int hifn_intr ;
 int hifn_partname (struct hifn_softc*) ;
 scalar_t__ hifn_ramtype (struct hifn_softc*) ;
 int hifn_reset_board (struct hifn_softc*,int ) ;
 int hifn_reset_puc (struct hifn_softc*) ;
 int hifn_sessions (struct hifn_softc*) ;
 int hifn_set_retry (struct hifn_softc*) ;
 int hifn_sramsize (struct hifn_softc*) ;
 int hifn_tick ;
 int hz ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int printf (char*,...) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;

__attribute__((used)) static int
hifn_attach(device_t dev)
{
 struct hifn_softc *sc = device_get_softc(dev);
 caddr_t kva;
 int rseg, rid;
 char rbase;
 u_int16_t ena, rev;

 sc->sc_dev = dev;

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), "hifn driver", MTX_DEF);







 if (pci_get_vendor(dev) == PCI_VENDOR_HIFN &&
     (pci_get_device(dev) == PCI_PRODUCT_HIFN_7951 ||
      pci_get_device(dev) == PCI_PRODUCT_HIFN_7955 ||
      pci_get_device(dev) == PCI_PRODUCT_HIFN_7956))
  sc->sc_flags = HIFN_HAS_RNG | HIFN_HAS_PUBLIC;




 if (pci_get_vendor(dev) == PCI_VENDOR_HIFN &&
     pci_get_device(dev) == PCI_PRODUCT_HIFN_7811)
  sc->sc_flags |= HIFN_IS_7811 | HIFN_HAS_RNG;




 if (pci_get_vendor(dev) == PCI_VENDOR_HIFN &&
     (pci_get_device(dev) == PCI_PRODUCT_HIFN_7955 ||
      pci_get_device(dev) == PCI_PRODUCT_HIFN_7956)) {
  sc->sc_flags |= HIFN_IS_7956 | HIFN_HAS_AES;





  hifn_getpllconfig(dev, &sc->sc_pllconfig);
 }







 pci_enable_busmaster(dev);

 rid = HIFN_BAR0;
 sc->sc_bar0res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
       RF_ACTIVE);
 if (sc->sc_bar0res == ((void*)0)) {
  device_printf(dev, "cannot map bar%d register space\n", 0);
  goto fail_pci;
 }
 sc->sc_st0 = rman_get_bustag(sc->sc_bar0res);
 sc->sc_sh0 = rman_get_bushandle(sc->sc_bar0res);
 sc->sc_bar0_lastreg = (bus_size_t) -1;

 rid = HIFN_BAR1;
 sc->sc_bar1res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
      RF_ACTIVE);
 if (sc->sc_bar1res == ((void*)0)) {
  device_printf(dev, "cannot map bar%d register space\n", 1);
  goto fail_io0;
 }
 sc->sc_st1 = rman_get_bustag(sc->sc_bar1res);
 sc->sc_sh1 = rman_get_bushandle(sc->sc_bar1res);
 sc->sc_bar1_lastreg = (bus_size_t) -1;

 hifn_set_retry(sc);





 if (bus_dma_tag_create(bus_get_dma_tag(dev),
          1, 0,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          HIFN_MAX_DMALEN,
          MAX_SCATTER,
          HIFN_MAX_SEGLEN,
          BUS_DMA_ALLOCNOW,
          ((void*)0),
          ((void*)0),
          &sc->sc_dmat)) {
  device_printf(dev, "cannot allocate DMA tag\n");
  goto fail_io1;
 }
 if (bus_dmamap_create(sc->sc_dmat, BUS_DMA_NOWAIT, &sc->sc_dmamap)) {
  device_printf(dev, "cannot create dma map\n");
  bus_dma_tag_destroy(sc->sc_dmat);
  goto fail_io1;
 }
 if (bus_dmamem_alloc(sc->sc_dmat, (void**) &kva, BUS_DMA_NOWAIT, &sc->sc_dmamap)) {
  device_printf(dev, "cannot alloc dma buffer\n");
  bus_dmamap_destroy(sc->sc_dmat, sc->sc_dmamap);
  bus_dma_tag_destroy(sc->sc_dmat);
  goto fail_io1;
 }
 if (bus_dmamap_load(sc->sc_dmat, sc->sc_dmamap, kva,
        sizeof (*sc->sc_dma),
        hifn_dmamap_cb, &sc->sc_dma_physaddr,
        BUS_DMA_NOWAIT)) {
  device_printf(dev, "cannot load dma map\n");
  bus_dmamem_free(sc->sc_dmat, kva, sc->sc_dmamap);
  bus_dma_tag_destroy(sc->sc_dmat);
  goto fail_io1;
 }
 sc->sc_dma = (struct hifn_dma *)kva;
 bzero(sc->sc_dma, sizeof(*sc->sc_dma));

 KASSERT(sc->sc_st0 != 0, ("hifn_attach: null bar0 tag!"));
 KASSERT(sc->sc_sh0 != 0, ("hifn_attach: null bar0 handle!"));
 KASSERT(sc->sc_st1 != 0, ("hifn_attach: null bar1 tag!"));
 KASSERT(sc->sc_sh1 != 0, ("hifn_attach: null bar1 handle!"));
 hifn_reset_board(sc, 0);

 if (hifn_enable_crypto(sc) != 0) {
  device_printf(dev, "crypto enabling failed\n");
  goto fail_mem;
 }
 hifn_reset_puc(sc);

 hifn_init_dma(sc);
 hifn_init_pci_registers(sc);


 if (sc->sc_flags & HIFN_IS_7956)
  sc->sc_drammodel = 1;
 else if (hifn_ramtype(sc))
  goto fail_mem;

 if (sc->sc_drammodel == 0)
  hifn_sramsize(sc);
 else
  hifn_dramsize(sc);





 if (pci_get_vendor(dev) == PCI_VENDOR_NETSEC &&
     pci_get_device(dev) == PCI_PRODUCT_NETSEC_7751 &&
     pci_get_revid(dev) == 0x61)
  sc->sc_ramsize >>= 1;




 rid = 0;
 sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
         RF_SHAREABLE|RF_ACTIVE);
 if (sc->sc_irq == ((void*)0)) {
  device_printf(dev, "could not map interrupt\n");
  goto fail_mem;
 }




 if (bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_NET | INTR_MPSAFE,
      ((void*)0), hifn_intr, sc, &sc->sc_intrhand)) {
  device_printf(dev, "could not setup interrupt\n");
  goto fail_intr2;
 }

 hifn_sessions(sc);





 rev = READ_REG_1(sc, HIFN_1_REVID) & 0xffff;

 rseg = sc->sc_ramsize / 1024;
 rbase = 'K';
 if (sc->sc_ramsize >= (1024 * 1024)) {
  rbase = 'M';
  rseg /= 1024;
 }
 device_printf(sc->sc_dev, "%s, rev %u, %d%cB %cram",
  hifn_partname(sc), rev,
  rseg, rbase, sc->sc_drammodel ? 'd' : 's');
 if (sc->sc_flags & HIFN_IS_7956)
  printf(", pll=0x%x<%s clk, %ux mult>",
   sc->sc_pllconfig,
   sc->sc_pllconfig & HIFN_PLL_REF_SEL ? "ext" : "pci",
   2 + 2*((sc->sc_pllconfig & HIFN_PLL_ND) >> 11));
 printf("\n");

 sc->sc_cid = crypto_get_driverid(dev, sizeof(struct hifn_session),
     CRYPTOCAP_F_HARDWARE);
 if (sc->sc_cid < 0) {
  device_printf(dev, "could not get crypto driver id\n");
  goto fail_intr;
 }

 WRITE_REG_0(sc, HIFN_0_PUCNFG,
     READ_REG_0(sc, HIFN_0_PUCNFG) | HIFN_PUCNFG_CHIPID);
 ena = READ_REG_0(sc, HIFN_0_PUSTAT) & HIFN_PUSTAT_CHIPENA;

 switch (ena) {
 case 128:
  crypto_register(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
  crypto_register(sc->sc_cid, CRYPTO_ARC4, 0, 0);
  if (sc->sc_flags & HIFN_HAS_AES)
   crypto_register(sc->sc_cid, CRYPTO_AES_CBC, 0, 0);

 case 129:
  crypto_register(sc->sc_cid, CRYPTO_MD5, 0, 0);
  crypto_register(sc->sc_cid, CRYPTO_SHA1, 0, 0);
  crypto_register(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
  crypto_register(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);
  crypto_register(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
  break;
 }

 bus_dmamap_sync(sc->sc_dmat, sc->sc_dmamap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 if (sc->sc_flags & (HIFN_HAS_PUBLIC | HIFN_HAS_RNG))
  hifn_init_pubrng(sc);

 callout_init(&sc->sc_tickto, 1);
 callout_reset(&sc->sc_tickto, hz, hifn_tick, sc);

 return (0);

fail_intr:
 bus_teardown_intr(dev, sc->sc_irq, sc->sc_intrhand);
fail_intr2:

 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq);
fail_mem:
 bus_dmamap_unload(sc->sc_dmat, sc->sc_dmamap);
 bus_dmamem_free(sc->sc_dmat, sc->sc_dma, sc->sc_dmamap);
 bus_dma_tag_destroy(sc->sc_dmat);


 WRITE_REG_1(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
     HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);
fail_io1:
 bus_release_resource(dev, SYS_RES_MEMORY, HIFN_BAR1, sc->sc_bar1res);
fail_io0:
 bus_release_resource(dev, SYS_RES_MEMORY, HIFN_BAR0, sc->sc_bar0res);
fail_pci:
 mtx_destroy(&sc->sc_mtx);
 return (ENXIO);
}
