
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct cesa_tdma_hdesc {int dummy; } ;
struct TYPE_4__ {scalar_t__ cdm_paddr; scalar_t__ cdm_vaddr; } ;
struct cesa_softc {int sc_tperr; int sc_soc_id; scalar_t__ sc_cid; int sc_sc_lock; int sc_tdesc_lock; int sc_sdesc_lock; int sc_requests_lock; int sc_sessions_lock; int * sc_res; int sc_sram_size; int sc_sram_base_va; int sc_icookie; int sc_data_dtag; TYPE_1__ sc_tdesc_cdm; TYPE_1__ sc_sdesc_cdm; TYPE_1__ sc_requests_cdm; TYPE_3__* sc_requests; int sc_free_requests; int sc_queued_requests; int sc_ready_requests; TYPE_3__* sc_sdesc; int sc_free_sdesc; TYPE_3__* sc_tdesc; int sc_free_tdesc; int sc_dev; scalar_t__ sc_error; scalar_t__ sc_blocked; } ;
struct cesa_session {int dummy; } ;
struct cesa_sa_hdesc {int dummy; } ;
struct cesa_sa_data {int dummy; } ;
typedef int device_t ;
struct TYPE_5__ {int cr_dmap; scalar_t__ cr_csd_paddr; struct cesa_sa_data* cr_csd; scalar_t__ csd_cshd_paddr; struct cesa_sa_hdesc* csd_cshd; scalar_t__ ctd_cthd_paddr; struct cesa_tdma_hdesc* ctd_cthd; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CESA_ICM ;
 int CESA_ICM_ACCTDMA ;
 int CESA_ICR ;
 int CESA_ICR_TPERR ;
 int CESA_MAX_FRAGMENTS ;
 int CESA_MAX_REQUEST_SIZE ;
 int CESA_REG_WRITE (struct cesa_softc*,int ,int) ;
 int CESA_REQUESTS ;
 int CESA_SA_CR ;
 int CESA_SA_CR_ACTIVATE_TDMA ;
 int CESA_SA_CR_MULTI_MODE ;
 int CESA_SA_CR_WAIT_FOR_TDMA ;
 int CESA_SA_DESCRIPTORS ;
 int CESA_SA_DPR ;
 int CESA_TDMA_CR ;
 int CESA_TDMA_CR_DBL128 ;
 int CESA_TDMA_CR_ENABLE ;
 int CESA_TDMA_CR_NBS ;
 int CESA_TDMA_CR_ORDEN ;
 int CESA_TDMA_CR_SBL128 ;
 int CESA_TDMA_DESCRIPTORS ;
 int CESA_TDMA_ECR ;
 int CESA_TDMA_EMR ;
 int CESA_TDMA_EMR_BOTH_HIT ;
 int CESA_TDMA_EMR_DATA_ERROR ;
 int CESA_TDMA_EMR_DOUBLE_HIT ;
 int CESA_TDMA_EMR_MISS ;
 int CESA_TDMA_NUM_OUTSTAND ;
 int CESA_TDMA_WRITE (struct cesa_softc*,int ,int) ;
 int CPU_PM_CTRL_CRYPTO ;
 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTO_3DES_CBC ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_DES_CBC ;
 int CRYPTO_MD5 ;
 int CRYPTO_MD5_HMAC ;
 int CRYPTO_SHA1 ;
 int CRYPTO_SHA1_HMAC ;
 int CRYPTO_SHA2_256_HMAC ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;







 size_t RES_CESA_IRQ ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct cesa_softc*,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int cesa_alloc_dma_mem (struct cesa_softc*,TYPE_1__*,int) ;
 int cesa_free_dma_mem (TYPE_1__*) ;
 int cesa_intr ;
 int cesa_res_spec ;
 int cesa_setup_sram (struct cesa_softc*) ;
 int cesa_setup_sram_armada (struct cesa_softc*) ;
 int cr_stq ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 int crypto_register (scalar_t__,int ,int ,int ) ;
 int csd_stq ;
 int ctd_stq ;
 int device_get_nameunit (int ) ;
 struct cesa_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int pmap_unmapdev (int ,int ) ;
 int soc_id (int*,int*) ;
 int soc_power_ctrl_get (int ) ;

__attribute__((used)) static int
cesa_attach_late(device_t dev)
{
 struct cesa_softc *sc;
 uint32_t d, r, val;
 int error;
 int i;

 sc = device_get_softc(dev);
 sc->sc_blocked = 0;
 sc->sc_error = 0;
 sc->sc_dev = dev;

 soc_id(&d, &r);

 switch (d) {
 case 134:
 case 133:

  if (soc_power_ctrl_get(CPU_PM_CTRL_CRYPTO) ==
      CPU_PM_CTRL_CRYPTO) {
   device_printf(dev, "not powered on\n");
   return (ENXIO);
  }
  sc->sc_tperr = 0;
  break;
 case 130:
 case 131:
 case 132:
  sc->sc_tperr = 0;
  break;
 case 129:
 case 128:

  if (soc_power_ctrl_get(CPU_PM_CTRL_CRYPTO) !=
      CPU_PM_CTRL_CRYPTO) {
   device_printf(dev, "not powered on\n");
   return (ENXIO);
  }
  sc->sc_tperr = CESA_ICR_TPERR;
  break;
 default:
  return (ENXIO);
 }

 sc->sc_soc_id = d;


 mtx_init(&sc->sc_sc_lock, device_get_nameunit(dev),
     "CESA Shared Data", MTX_DEF);
 mtx_init(&sc->sc_tdesc_lock, device_get_nameunit(dev),
     "CESA TDMA Descriptors Pool", MTX_DEF);
 mtx_init(&sc->sc_sdesc_lock, device_get_nameunit(dev),
     "CESA SA Descriptors Pool", MTX_DEF);
 mtx_init(&sc->sc_requests_lock, device_get_nameunit(dev),
     "CESA Requests Pool", MTX_DEF);
 mtx_init(&sc->sc_sessions_lock, device_get_nameunit(dev),
     "CESA Sessions Pool", MTX_DEF);


 error = bus_alloc_resources(dev, cesa_res_spec, sc->sc_res);
 if (error) {
  device_printf(dev, "could not allocate resources\n");
  goto err0;
 }


 if (!ofw_bus_is_compatible(dev, "marvell,armada-38x-crypto"))
  error = cesa_setup_sram(sc);
 else
  error = cesa_setup_sram_armada(sc);

 if (error) {
  device_printf(dev, "could not setup SRAM\n");
  goto err1;
 }


 error = bus_setup_intr(dev, sc->sc_res[RES_CESA_IRQ], INTR_TYPE_NET |
     INTR_MPSAFE, ((void*)0), cesa_intr, sc, &(sc->sc_icookie));
 if (error) {
  device_printf(dev, "could not setup engine completion irq\n");
  goto err2;
 }


 error = bus_dma_tag_create(bus_get_dma_tag(dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     CESA_MAX_REQUEST_SIZE,
     CESA_MAX_FRAGMENTS,
     CESA_MAX_REQUEST_SIZE, 0,
     ((void*)0), ((void*)0),
     &sc->sc_data_dtag);
 if (error)
  goto err3;


 error = cesa_alloc_dma_mem(sc, &sc->sc_tdesc_cdm,
     CESA_TDMA_DESCRIPTORS * sizeof(struct cesa_tdma_hdesc));
 if (error)
  goto err4;

 STAILQ_INIT(&sc->sc_free_tdesc);
 for (i = 0; i < CESA_TDMA_DESCRIPTORS; i++) {
  sc->sc_tdesc[i].ctd_cthd =
      (struct cesa_tdma_hdesc *)(sc->sc_tdesc_cdm.cdm_vaddr) + i;
  sc->sc_tdesc[i].ctd_cthd_paddr = sc->sc_tdesc_cdm.cdm_paddr +
      (i * sizeof(struct cesa_tdma_hdesc));
  STAILQ_INSERT_TAIL(&sc->sc_free_tdesc, &sc->sc_tdesc[i],
      ctd_stq);
 }


 error = cesa_alloc_dma_mem(sc, &sc->sc_sdesc_cdm,
     CESA_SA_DESCRIPTORS * sizeof(struct cesa_sa_hdesc));
 if (error)
  goto err5;

 STAILQ_INIT(&sc->sc_free_sdesc);
 for (i = 0; i < CESA_SA_DESCRIPTORS; i++) {
  sc->sc_sdesc[i].csd_cshd =
      (struct cesa_sa_hdesc *)(sc->sc_sdesc_cdm.cdm_vaddr) + i;
  sc->sc_sdesc[i].csd_cshd_paddr = sc->sc_sdesc_cdm.cdm_paddr +
      (i * sizeof(struct cesa_sa_hdesc));
  STAILQ_INSERT_TAIL(&sc->sc_free_sdesc, &sc->sc_sdesc[i],
      csd_stq);
 }


 error = cesa_alloc_dma_mem(sc, &sc->sc_requests_cdm,
     CESA_REQUESTS * sizeof(struct cesa_sa_data));
 if (error)
  goto err6;

 STAILQ_INIT(&sc->sc_free_requests);
 STAILQ_INIT(&sc->sc_ready_requests);
 STAILQ_INIT(&sc->sc_queued_requests);
 for (i = 0; i < CESA_REQUESTS; i++) {
  sc->sc_requests[i].cr_csd =
      (struct cesa_sa_data *)(sc->sc_requests_cdm.cdm_vaddr) + i;
  sc->sc_requests[i].cr_csd_paddr =
      sc->sc_requests_cdm.cdm_paddr +
      (i * sizeof(struct cesa_sa_data));


  error = bus_dmamap_create(sc->sc_data_dtag, 0,
      &sc->sc_requests[i].cr_dmap);
  if (error && i > 0) {
   i--;
   do {
    bus_dmamap_destroy(sc->sc_data_dtag,
        sc->sc_requests[i].cr_dmap);
   } while (i--);

   goto err7;
  }

  STAILQ_INSERT_TAIL(&sc->sc_free_requests, &sc->sc_requests[i],
      cr_stq);
 }







 val = CESA_TDMA_CR_DBL128 | CESA_TDMA_CR_SBL128 |
     CESA_TDMA_CR_ORDEN | CESA_TDMA_CR_NBS | CESA_TDMA_CR_ENABLE;

 if (sc->sc_soc_id == 130 ||
     sc->sc_soc_id == 131 ||
     sc->sc_soc_id == 132)
  val |= CESA_TDMA_NUM_OUTSTAND;

 CESA_TDMA_WRITE(sc, CESA_TDMA_CR, val);







 CESA_REG_WRITE(sc, CESA_SA_DPR, 0);
 CESA_REG_WRITE(sc, CESA_SA_CR, CESA_SA_CR_ACTIVATE_TDMA |
     CESA_SA_CR_WAIT_FOR_TDMA | CESA_SA_CR_MULTI_MODE);


 CESA_REG_WRITE(sc, CESA_ICR, 0);
 CESA_REG_WRITE(sc, CESA_ICM, CESA_ICM_ACCTDMA | sc->sc_tperr);
 CESA_TDMA_WRITE(sc, CESA_TDMA_ECR, 0);
 CESA_TDMA_WRITE(sc, CESA_TDMA_EMR, CESA_TDMA_EMR_MISS |
     CESA_TDMA_EMR_DOUBLE_HIT | CESA_TDMA_EMR_BOTH_HIT |
     CESA_TDMA_EMR_DATA_ERROR);


 sc->sc_cid = crypto_get_driverid(dev, sizeof(struct cesa_session),
     CRYPTOCAP_F_HARDWARE);
 if (sc->sc_cid < 0) {
  device_printf(dev, "could not get crypto driver id\n");
  goto err8;
 }

 crypto_register(sc->sc_cid, CRYPTO_AES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_MD5, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_SHA1, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);
 if (sc->sc_soc_id == 130 ||
     sc->sc_soc_id == 131 ||
     sc->sc_soc_id == 132)
  crypto_register(sc->sc_cid, CRYPTO_SHA2_256_HMAC, 0, 0);

 return (0);
err8:
 for (i = 0; i < CESA_REQUESTS; i++)
  bus_dmamap_destroy(sc->sc_data_dtag,
      sc->sc_requests[i].cr_dmap);
err7:
 cesa_free_dma_mem(&sc->sc_requests_cdm);
err6:
 cesa_free_dma_mem(&sc->sc_sdesc_cdm);
err5:
 cesa_free_dma_mem(&sc->sc_tdesc_cdm);
err4:
 bus_dma_tag_destroy(sc->sc_data_dtag);
err3:
 bus_teardown_intr(dev, sc->sc_res[RES_CESA_IRQ], sc->sc_icookie);
err2:
 if (sc->sc_soc_id == 130 ||
     sc->sc_soc_id == 131 ||
     sc->sc_soc_id == 132)
  pmap_unmapdev(sc->sc_sram_base_va, sc->sc_sram_size);
err1:
 bus_release_resources(dev, cesa_res_spec, sc->sc_res);
err0:
 mtx_destroy(&sc->sc_sessions_lock);
 mtx_destroy(&sc->sc_requests_lock);
 mtx_destroy(&sc->sc_sdesc_lock);
 mtx_destroy(&sc->sc_tdesc_lock);
 mtx_destroy(&sc->sc_sc_lock);
 return (ENXIO);
}
