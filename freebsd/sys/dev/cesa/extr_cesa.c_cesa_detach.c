
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cesa_softc {scalar_t__ sc_soc_id; int sc_sc_lock; int sc_tdesc_lock; int sc_sdesc_lock; int sc_requests_lock; int sc_sessions_lock; int sc_sram_size; int sc_sram_base_va; int * sc_res; int sc_icookie; int sc_data_dtag; int sc_tdesc_cdm; int sc_sdesc_cdm; int sc_requests_cdm; TYPE_1__* sc_requests; int sc_cid; } ;
typedef int device_t ;
struct TYPE_2__ {int cr_dmap; } ;


 int CESA_ICM ;
 int CESA_REG_WRITE (struct cesa_softc*,int ,int ) ;
 int CESA_REQUESTS ;
 int CESA_TDMA_EMR ;
 int CESA_TDMA_WRITE (struct cesa_softc*,int ,int ) ;
 scalar_t__ MV_DEV_88F6810 ;
 scalar_t__ MV_DEV_88F6820 ;
 scalar_t__ MV_DEV_88F6828 ;
 size_t RES_CESA_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int cesa_free_dma_mem (int *) ;
 int cesa_res_spec ;
 int crypto_unregister_all (int ) ;
 struct cesa_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int pmap_unmapdev (int ,int ) ;

__attribute__((used)) static int
cesa_detach(device_t dev)
{
 struct cesa_softc *sc;
 int i;

 sc = device_get_softc(dev);




 CESA_REG_WRITE(sc, CESA_ICM, 0);
 CESA_TDMA_WRITE(sc, CESA_TDMA_EMR, 0);


 crypto_unregister_all(sc->sc_cid);


 for (i = 0; i < CESA_REQUESTS; i++)
  bus_dmamap_destroy(sc->sc_data_dtag,
      sc->sc_requests[i].cr_dmap);


 cesa_free_dma_mem(&sc->sc_requests_cdm);
 cesa_free_dma_mem(&sc->sc_sdesc_cdm);
 cesa_free_dma_mem(&sc->sc_tdesc_cdm);


 bus_dma_tag_destroy(sc->sc_data_dtag);


 bus_teardown_intr(dev, sc->sc_res[RES_CESA_IRQ], sc->sc_icookie);


 bus_release_resources(dev, cesa_res_spec, sc->sc_res);


 if (sc->sc_soc_id == MV_DEV_88F6828 ||
     sc->sc_soc_id == MV_DEV_88F6820 ||
     sc->sc_soc_id == MV_DEV_88F6810)
  pmap_unmapdev(sc->sc_sram_base_va, sc->sc_sram_size);


 mtx_destroy(&sc->sc_sessions_lock);
 mtx_destroy(&sc->sc_requests_lock);
 mtx_destroy(&sc->sc_sdesc_lock);
 mtx_destroy(&sc->sc_tdesc_lock);
 mtx_destroy(&sc->sc_sc_lock);

 return (0);
}
