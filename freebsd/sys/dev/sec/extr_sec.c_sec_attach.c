
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dma_paddr; scalar_t__ dma_vaddr; } ;
struct TYPE_6__ {int bst; int bsh; } ;
struct sec_softc {scalar_t__ sc_cid; int sc_pri_irid; int sc_version; int sc_sec_irid; unsigned long long sc_int_error_mask; int sc_channel_idle_mask; int sc_descriptors_lock; int sc_controller_lock; int * sc_rres; scalar_t__ sc_rrid; int sc_pri_ihand; int sc_pri_ires; int sc_sec_ihand; int sc_sec_ires; TYPE_4__ sc_desc_dmem; TYPE_4__ sc_lt_dmem; TYPE_3__* sc_lt; TYPE_2__* sc_desc; TYPE_1__ sc_bas; scalar_t__ sc_shutdown; scalar_t__ sc_blocked; int sc_dev; } ;
struct sec_session {int dummy; } ;
struct sec_hw_lt {int shl_n; scalar_t__ shl_ptr; scalar_t__ shl_r; scalar_t__ shl_length; } ;
struct sec_hw_desc {int dummy; } ;
typedef int device_t ;
struct TYPE_8__ {scalar_t__ sl_lt_paddr; struct sec_hw_lt* sl_lt; } ;
struct TYPE_7__ {scalar_t__ sd_desc_paddr; struct sec_hw_desc* sd_desc; } ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTO_3DES_CBC ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_DES_CBC ;
 int CRYPTO_MD5 ;
 int CRYPTO_MD5_HMAC ;
 int CRYPTO_SHA1 ;
 int CRYPTO_SHA1_HMAC ;
 int CRYPTO_SHA2_256_HMAC ;
 int CRYPTO_SHA2_384_HMAC ;
 int CRYPTO_SHA2_512_HMAC ;
 int ENXIO ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SEC_CHANNELS ;
 int SEC_CHAN_CSR2_FFLVL_M ;
 int SEC_CHAN_CSR2_FFLVL_S ;
 int SEC_CHAN_CSR2_GSTATE_M ;
 int SEC_CHAN_CSR2_GSTATE_S ;
 int SEC_CHAN_CSR2_MSTATE_M ;
 int SEC_CHAN_CSR2_MSTATE_S ;
 int SEC_CHAN_CSR2_PSTATE_M ;
 int SEC_CHAN_CSR2_PSTATE_S ;
 int SEC_CHAN_CSR3_FFLVL_M ;
 int SEC_CHAN_CSR3_FFLVL_S ;
 int SEC_CHAN_CSR3_GSTATE_M ;
 int SEC_CHAN_CSR3_GSTATE_S ;
 int SEC_CHAN_CSR3_MSTATE_M ;
 int SEC_CHAN_CSR3_MSTATE_S ;
 int SEC_CHAN_CSR3_PSTATE_M ;
 int SEC_CHAN_CSR3_PSTATE_S ;
 int SEC_CNT_INIT (struct sec_softc*,int ,int) ;
 int SEC_DESCRIPTORS ;
 unsigned long long SEC_INT_CH_ERR (int) ;
 int SEC_LT_ENTRIES ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 int crypto_register (scalar_t__,int ,int ,int ) ;
 int device_get_nameunit (int ) ;
 struct sec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int sc_free_desc_get_cnt ;
 int sc_free_desc_put_cnt ;
 int sc_lt_alloc_cnt ;
 int sc_lt_free_cnt ;
 int sc_queued_desc_get_cnt ;
 int sc_queued_desc_put_cnt ;
 int sc_ready_desc_get_cnt ;
 int sc_ready_desc_put_cnt ;
 int sec_alloc_dma_mem (struct sec_softc*,TYPE_4__*,int) ;
 int sec_free_dma_mem (TYPE_4__*) ;
 int sec_init (struct sec_softc*) ;
 int sec_primary_intr ;
 int sec_release_intr (struct sec_softc*,int ,int ,int,char*) ;
 int sec_secondary_intr ;
 int sec_setup_intr (struct sec_softc*,int *,int *,int*,int ,char*) ;

__attribute__((used)) static int
sec_attach(device_t dev)
{
 struct sec_softc *sc;
 struct sec_hw_lt *lt;
 int error = 0;
 int i;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_blocked = 0;
 sc->sc_shutdown = 0;

 sc->sc_cid = crypto_get_driverid(dev, sizeof(struct sec_session),
     CRYPTOCAP_F_HARDWARE);
 if (sc->sc_cid < 0) {
  device_printf(dev, "could not get crypto driver ID!\n");
  return (ENXIO);
 }


 mtx_init(&sc->sc_controller_lock, device_get_nameunit(dev),
     "SEC Controller lock", MTX_DEF);
 mtx_init(&sc->sc_descriptors_lock, device_get_nameunit(dev),
     "SEC Descriptors lock", MTX_DEF);


 sc->sc_rrid = 0;
 sc->sc_rres = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rrid,
     RF_ACTIVE);

 if (sc->sc_rres == ((void*)0)) {
  device_printf(dev, "could not allocate I/O memory!\n");
  goto fail1;
 }

 sc->sc_bas.bsh = rman_get_bushandle(sc->sc_rres);
 sc->sc_bas.bst = rman_get_bustag(sc->sc_rres);


 sc->sc_pri_irid = 0;
 error = sec_setup_intr(sc, &sc->sc_pri_ires, &sc->sc_pri_ihand,
     &sc->sc_pri_irid, sec_primary_intr, "primary");

 if (error)
  goto fail2;


 if (sc->sc_version == 3) {
  sc->sc_sec_irid = 1;
  error = sec_setup_intr(sc, &sc->sc_sec_ires, &sc->sc_sec_ihand,
      &sc->sc_sec_irid, sec_secondary_intr, "secondary");

  if (error)
   goto fail3;
 }


 error = sec_alloc_dma_mem(sc, &(sc->sc_desc_dmem),
     SEC_DESCRIPTORS * sizeof(struct sec_hw_desc));

 if (error)
  goto fail4;

 error = sec_alloc_dma_mem(sc, &(sc->sc_lt_dmem),
     (SEC_LT_ENTRIES + 1) * sizeof(struct sec_hw_lt));

 if (error)
  goto fail5;


 for (i = 0; i < SEC_DESCRIPTORS; i++) {
  sc->sc_desc[i].sd_desc =
      (struct sec_hw_desc*)(sc->sc_desc_dmem.dma_vaddr) + i;
  sc->sc_desc[i].sd_desc_paddr = sc->sc_desc_dmem.dma_paddr +
      (i * sizeof(struct sec_hw_desc));
 }

 for (i = 0; i < SEC_LT_ENTRIES + 1; i++) {
  sc->sc_lt[i].sl_lt =
      (struct sec_hw_lt*)(sc->sc_lt_dmem.dma_vaddr) + i;
  sc->sc_lt[i].sl_lt_paddr = sc->sc_lt_dmem.dma_paddr +
      (i * sizeof(struct sec_hw_lt));
 }


 lt = sc->sc_lt[SEC_LT_ENTRIES].sl_lt;
 lt->shl_length = 0;
 lt->shl_r = 0;
 lt->shl_n = 1;
 lt->shl_ptr = sc->sc_lt[0].sl_lt_paddr;


 SEC_CNT_INIT(sc, sc_free_desc_get_cnt, SEC_DESCRIPTORS);
 SEC_CNT_INIT(sc, sc_free_desc_put_cnt, SEC_DESCRIPTORS);
 SEC_CNT_INIT(sc, sc_ready_desc_get_cnt, SEC_DESCRIPTORS);
 SEC_CNT_INIT(sc, sc_ready_desc_put_cnt, SEC_DESCRIPTORS);
 SEC_CNT_INIT(sc, sc_queued_desc_get_cnt, SEC_DESCRIPTORS);
 SEC_CNT_INIT(sc, sc_queued_desc_put_cnt, SEC_DESCRIPTORS);
 SEC_CNT_INIT(sc, sc_lt_alloc_cnt, SEC_LT_ENTRIES);
 SEC_CNT_INIT(sc, sc_lt_free_cnt, SEC_LT_ENTRIES);


 sc->sc_int_error_mask = 0;
 for (i = 0; i < SEC_CHANNELS; i++)
  sc->sc_int_error_mask |= (~0ULL & SEC_INT_CH_ERR(i));

 switch (sc->sc_version) {
 case 2:
  sc->sc_channel_idle_mask =
      (SEC_CHAN_CSR2_FFLVL_M << SEC_CHAN_CSR2_FFLVL_S) |
      (SEC_CHAN_CSR2_MSTATE_M << SEC_CHAN_CSR2_MSTATE_S) |
      (SEC_CHAN_CSR2_PSTATE_M << SEC_CHAN_CSR2_PSTATE_S) |
      (SEC_CHAN_CSR2_GSTATE_M << SEC_CHAN_CSR2_GSTATE_S);
  break;
 case 3:
  sc->sc_channel_idle_mask =
      (SEC_CHAN_CSR3_FFLVL_M << SEC_CHAN_CSR3_FFLVL_S) |
      (SEC_CHAN_CSR3_MSTATE_M << SEC_CHAN_CSR3_MSTATE_S) |
      (SEC_CHAN_CSR3_PSTATE_M << SEC_CHAN_CSR3_PSTATE_S) |
      (SEC_CHAN_CSR3_GSTATE_M << SEC_CHAN_CSR3_GSTATE_S);
  break;
 }


 error = sec_init(sc);

 if (error)
  goto fail6;


 crypto_register(sc->sc_cid, CRYPTO_AES_CBC, 0, 0);


 crypto_register(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);


 crypto_register(sc->sc_cid, CRYPTO_MD5, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_SHA1, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);
 crypto_register(sc->sc_cid, CRYPTO_SHA2_256_HMAC, 0, 0);
 if (sc->sc_version >= 3) {
  crypto_register(sc->sc_cid, CRYPTO_SHA2_384_HMAC, 0, 0);
  crypto_register(sc->sc_cid, CRYPTO_SHA2_512_HMAC, 0, 0);
 }

 return (0);

fail6:
 sec_free_dma_mem(&(sc->sc_lt_dmem));
fail5:
 sec_free_dma_mem(&(sc->sc_desc_dmem));
fail4:
 sec_release_intr(sc, sc->sc_sec_ires, sc->sc_sec_ihand,
     sc->sc_sec_irid, "secondary");
fail3:
 sec_release_intr(sc, sc->sc_pri_ires, sc->sc_pri_ihand,
     sc->sc_pri_irid, "primary");
fail2:
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rrid, sc->sc_rres);
fail1:
 mtx_destroy(&sc->sc_controller_lock);
 mtx_destroy(&sc->sc_descriptors_lock);

 return (ENXIO);
}
