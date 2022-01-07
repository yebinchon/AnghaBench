
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_7__ {scalar_t__ dma_vaddr; } ;
struct TYPE_5__ {TYPE_3__ q_mcr; TYPE_3__ q_ctx; } ;
struct TYPE_6__ {TYPE_1__ rng_q; TYPE_3__ rng_buf; } ;
struct ubsec_softc {int sc_statmask; int sc_flags; scalar_t__ sc_cid; int sc_rnghz; int * sc_sr; int * sc_irq; int sc_ih; int sc_mcr2lock; int sc_rngto; TYPE_2__ sc_rng; void* sc_harvest; scalar_t__ sc_rndtest; int sc_dev; int sc_freeqlock; int sc_mcr1lock; int sc_freequeue; struct ubsec_q** sc_queuea; struct ubsec_dma* sc_dmaa; int sc_dmat; int sc_sh; int sc_st; int sc_q2free; int sc_qchip2; int sc_queue2; int sc_qchip; int sc_queue; } ;
struct ubsec_session {int dummy; } ;
struct ubsec_q {struct ubsec_dma* q_dma; } ;
struct ubsec_mcr {int dummy; } ;
struct ubsec_dmachunk {int dummy; } ;
struct ubsec_dma {TYPE_3__ d_alloc; struct ubsec_dmachunk* d_dma; } ;
struct ubsec_ctx_rngbypass {int dummy; } ;
typedef int device_t ;


 int BS_BAR ;
 int BS_STAT_DMAERR ;
 int BS_STAT_MCR1_ALLEMPTY ;
 int BS_STAT_MCR1_DONE ;
 int BS_STAT_MCR2_ALLEMPTY ;
 int BS_STAT_MCR2_DONE ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CRK_MOD_EXP ;
 int CRK_MOD_EXP_CRT ;
 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTO_3DES_CBC ;
 int CRYPTO_DES_CBC ;
 int CRYPTO_MD5_HMAC ;
 int CRYPTO_SHA1_HMAC ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 scalar_t__ PCI_PRODUCT_BLUESTEEL_5601 ;
 scalar_t__ PCI_PRODUCT_BROADCOM_5802 ;
 scalar_t__ PCI_PRODUCT_BROADCOM_5805 ;
 scalar_t__ PCI_PRODUCT_BROADCOM_5820 ;
 scalar_t__ PCI_PRODUCT_BROADCOM_5821 ;
 scalar_t__ PCI_PRODUCT_BROADCOM_5822 ;
 scalar_t__ PCI_PRODUCT_BROADCOM_5823 ;
 scalar_t__ PCI_PRODUCT_BROADCOM_5825 ;
 scalar_t__ PCI_PRODUCT_SUN_5821 ;
 scalar_t__ PCI_PRODUCT_SUN_SCA1K ;
 scalar_t__ PCI_VENDOR_BLUESTEEL ;
 scalar_t__ PCI_VENDOR_BROADCOM ;
 scalar_t__ PCI_VENDOR_SUN ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SIMPLEQ_INIT (int *) ;
 int SIMPLEQ_INSERT_TAIL (int *,struct ubsec_q*,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int UBSEC_RNG_BUFSIZ ;
 int UBS_FLAGS_BIGKEY ;
 int UBS_FLAGS_HWNORM ;
 int UBS_FLAGS_KEY ;
 int UBS_FLAGS_LONGCTX ;
 int UBS_FLAGS_RNG ;
 scalar_t__ UBS_MAX_NQUEUE ;
 int UBS_MAX_SCATTER ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int ,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct ubsec_softc*,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int bzero (struct ubsec_softc*,int) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct ubsec_softc*) ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 int crypto_kregister (scalar_t__,int ,int ) ;
 int crypto_register (scalar_t__,int ,int ,int ) ;
 int crypto_unregister_all (scalar_t__) ;
 void* default_harvest ;
 int device_get_nameunit (int ) ;
 struct ubsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int free (struct ubsec_q*,int ) ;
 int hz ;
 scalar_t__ malloc (int,int ,int ) ;
 int mtx_init (int *,int ,char*,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int q_next ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ rndtest_attach (int ) ;
 void* rndtest_harvest ;
 int ubsec_dma_free (struct ubsec_softc*,TYPE_3__*) ;
 scalar_t__ ubsec_dma_malloc (struct ubsec_softc*,int,TYPE_3__*,int ) ;
 int ubsec_init_board (struct ubsec_softc*) ;
 int ubsec_init_pciregs (int ) ;
 int ubsec_intr ;
 int ubsec_partname (struct ubsec_softc*) ;
 int ubsec_reset_board (struct ubsec_softc*) ;
 int ubsec_rng ;

__attribute__((used)) static int
ubsec_attach(device_t dev)
{
 struct ubsec_softc *sc = device_get_softc(dev);
 struct ubsec_dma *dmap;
 u_int32_t i;
 int rid;

 bzero(sc, sizeof (*sc));
 sc->sc_dev = dev;

 SIMPLEQ_INIT(&sc->sc_queue);
 SIMPLEQ_INIT(&sc->sc_qchip);
 SIMPLEQ_INIT(&sc->sc_queue2);
 SIMPLEQ_INIT(&sc->sc_qchip2);
 SIMPLEQ_INIT(&sc->sc_q2free);



 sc->sc_statmask = BS_STAT_MCR1_DONE | BS_STAT_DMAERR;

 if (pci_get_vendor(dev) == PCI_VENDOR_BLUESTEEL &&
     pci_get_device(dev) == PCI_PRODUCT_BLUESTEEL_5601)
  sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG;

 if (pci_get_vendor(dev) == PCI_VENDOR_BROADCOM &&
     (pci_get_device(dev) == PCI_PRODUCT_BROADCOM_5802 ||
      pci_get_device(dev) == PCI_PRODUCT_BROADCOM_5805))
  sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG;

 if (pci_get_vendor(dev) == PCI_VENDOR_BROADCOM &&
     pci_get_device(dev) == PCI_PRODUCT_BROADCOM_5820)
  sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG |
      UBS_FLAGS_LONGCTX | UBS_FLAGS_HWNORM | UBS_FLAGS_BIGKEY;

 if ((pci_get_vendor(dev) == PCI_VENDOR_BROADCOM &&
      (pci_get_device(dev) == PCI_PRODUCT_BROADCOM_5821 ||
       pci_get_device(dev) == PCI_PRODUCT_BROADCOM_5822 ||
       pci_get_device(dev) == PCI_PRODUCT_BROADCOM_5823 ||
       pci_get_device(dev) == PCI_PRODUCT_BROADCOM_5825)) ||
     (pci_get_vendor(dev) == PCI_VENDOR_SUN &&
      (pci_get_device(dev) == PCI_PRODUCT_SUN_SCA1K ||
       pci_get_device(dev) == PCI_PRODUCT_SUN_5821))) {

  sc->sc_statmask |= BS_STAT_MCR1_ALLEMPTY |
      BS_STAT_MCR2_ALLEMPTY;
  sc->sc_flags |= UBS_FLAGS_KEY | UBS_FLAGS_RNG |
      UBS_FLAGS_LONGCTX | UBS_FLAGS_HWNORM | UBS_FLAGS_BIGKEY;
 }

 pci_enable_busmaster(dev);




 rid = BS_BAR;
 sc->sc_sr = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
        RF_ACTIVE);
 if (sc->sc_sr == ((void*)0)) {
  device_printf(dev, "cannot map register space\n");
  goto bad;
 }
 sc->sc_st = rman_get_bustag(sc->sc_sr);
 sc->sc_sh = rman_get_bushandle(sc->sc_sr);




 rid = 0;
 sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
         RF_SHAREABLE|RF_ACTIVE);
 if (sc->sc_irq == ((void*)0)) {
  device_printf(dev, "could not map interrupt\n");
  goto bad1;
 }




 if (bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_NET | INTR_MPSAFE,
      ((void*)0), ubsec_intr, sc, &sc->sc_ih)) {
  device_printf(dev, "could not establish interrupt\n");
  goto bad2;
 }

 sc->sc_cid = crypto_get_driverid(dev, sizeof(struct ubsec_session),
     CRYPTOCAP_F_HARDWARE);
 if (sc->sc_cid < 0) {
  device_printf(dev, "could not get crypto driver id\n");
  goto bad3;
 }




 if (bus_dma_tag_create(bus_get_dma_tag(dev),
          1, 0,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          0x3ffff,
          UBS_MAX_SCATTER,
          0xffff,
          BUS_DMA_ALLOCNOW,
          ((void*)0), ((void*)0),
          &sc->sc_dmat)) {
  device_printf(dev, "cannot allocate DMA tag\n");
  goto bad4;
 }
 SIMPLEQ_INIT(&sc->sc_freequeue);
 dmap = sc->sc_dmaa;
 for (i = 0; i < UBS_MAX_NQUEUE; i++, dmap++) {
  struct ubsec_q *q;

  q = (struct ubsec_q *)malloc(sizeof(struct ubsec_q),
      M_DEVBUF, M_NOWAIT);
  if (q == ((void*)0)) {
   device_printf(dev, "cannot allocate queue buffers\n");
   break;
  }

  if (ubsec_dma_malloc(sc, sizeof(struct ubsec_dmachunk),
      &dmap->d_alloc, 0)) {
   device_printf(dev, "cannot allocate dma buffers\n");
   free(q, M_DEVBUF);
   break;
  }
  dmap->d_dma = (struct ubsec_dmachunk *)dmap->d_alloc.dma_vaddr;

  q->q_dma = dmap;
  sc->sc_queuea[i] = q;

  SIMPLEQ_INSERT_TAIL(&sc->sc_freequeue, q, q_next);
 }
 mtx_init(&sc->sc_mcr1lock, device_get_nameunit(dev),
  "mcr1 operations", MTX_DEF);
 mtx_init(&sc->sc_freeqlock, device_get_nameunit(dev),
  "mcr1 free q", MTX_DEF);

 device_printf(sc->sc_dev, "%s\n", ubsec_partname(sc));

 crypto_register(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);




 ubsec_reset_board(sc);




 ubsec_init_pciregs(dev);




 ubsec_init_board(sc);


 if (sc->sc_flags & UBS_FLAGS_RNG) {
  sc->sc_statmask |= BS_STAT_MCR2_DONE;







  sc->sc_harvest = default_harvest;


  if (ubsec_dma_malloc(sc, sizeof(struct ubsec_mcr),
      &sc->sc_rng.rng_q.q_mcr, 0))
   goto skip_rng;

  if (ubsec_dma_malloc(sc, sizeof(struct ubsec_ctx_rngbypass),
      &sc->sc_rng.rng_q.q_ctx, 0)) {
   ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_mcr);
   goto skip_rng;
  }

  if (ubsec_dma_malloc(sc, sizeof(u_int32_t) *
      UBSEC_RNG_BUFSIZ, &sc->sc_rng.rng_buf, 0)) {
   ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_ctx);
   ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_mcr);
   goto skip_rng;
  }

  if (hz >= 100)
   sc->sc_rnghz = hz / 100;
  else
   sc->sc_rnghz = 1;
  callout_init(&sc->sc_rngto, 1);
  callout_reset(&sc->sc_rngto, sc->sc_rnghz, ubsec_rng, sc);
skip_rng:
 ;
 }

 mtx_init(&sc->sc_mcr2lock, device_get_nameunit(dev),
  "mcr2 operations", MTX_DEF);

 if (sc->sc_flags & UBS_FLAGS_KEY) {
  sc->sc_statmask |= BS_STAT_MCR2_DONE;

  crypto_kregister(sc->sc_cid, CRK_MOD_EXP, 0);



 }
 return (0);
bad4:
 crypto_unregister_all(sc->sc_cid);
bad3:
 bus_teardown_intr(dev, sc->sc_irq, sc->sc_ih);
bad2:
 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq);
bad1:
 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_sr);
bad:
 return (ENXIO);
}
