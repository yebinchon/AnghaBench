
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int rl_tx_desc_cnt; int rl_rx_desc_cnt; scalar_t__ rl_stag; int rl_smap; scalar_t__ rl_stats; scalar_t__ rl_stats_addr; scalar_t__ rl_jrx_mtag; scalar_t__ rl_jrx_sparemap; TYPE_2__* rl_jrx_desc; scalar_t__ rl_rx_mtag; scalar_t__ rl_rx_sparemap; TYPE_1__* rl_rx_desc; scalar_t__ rl_tx_mtag; TYPE_3__* rl_tx_desc; scalar_t__ rl_tx_list_tag; int rl_tx_list_map; scalar_t__ rl_tx_list; scalar_t__ rl_tx_list_addr; scalar_t__ rl_rx_list_tag; int rl_rx_list_map; scalar_t__ rl_rx_list; scalar_t__ rl_rx_list_addr; } ;
struct rl_softc {int suspended; int rl_flags; int rl_res_id; int rl_mtx; scalar_t__ rl_parent_tag; TYPE_4__ rl_ldata; int * rl_res; int rl_res_type; int * rl_res_pba; int ** rl_irq; int ** rl_intrhand; scalar_t__ rl_miibus; int rl_inttask; int rl_stat_callout; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capenable; int if_flags; } ;
typedef int device_t ;
struct TYPE_7__ {scalar_t__ tx_dmamap; } ;
struct TYPE_6__ {scalar_t__ rx_dmamap; } ;
struct TYPE_5__ {scalar_t__ rx_dmamap; } ;


 int IFCAP_POLLING ;
 int IFF_UP ;
 int KASSERT (int ,char*) ;
 int PCIR_BAR (int) ;
 int RL_FLAG_MSI ;
 int RL_FLAG_MSIX ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct rl_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int netmap_detach (struct ifnet*) ;
 int pci_release_msi (int ) ;
 int re_stop (struct rl_softc*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_fast ;

__attribute__((used)) static int
re_detach(device_t dev)
{
 struct rl_softc *sc;
 struct ifnet *ifp;
 int i, rid;

 sc = device_get_softc(dev);
 ifp = sc->rl_ifp;
 KASSERT(mtx_initialized(&sc->rl_mtx), ("re mutex not initialized"));


 if (device_is_attached(dev)) {




  RL_LOCK(sc);



  re_stop(sc);
  RL_UNLOCK(sc);
  callout_drain(&sc->rl_stat_callout);
  taskqueue_drain(taskqueue_fast, &sc->rl_inttask);
  ifp->if_flags &= ~IFF_UP;
  ether_ifdetach(ifp);
 }
 if (sc->rl_miibus)
  device_delete_child(dev, sc->rl_miibus);
 bus_generic_detach(dev);






 if (sc->rl_intrhand[0] != ((void*)0)) {
  bus_teardown_intr(dev, sc->rl_irq[0], sc->rl_intrhand[0]);
  sc->rl_intrhand[0] = ((void*)0);
 }
 if (ifp != ((void*)0)) {



  if_free(ifp);
 }
 if ((sc->rl_flags & (RL_FLAG_MSI | RL_FLAG_MSIX)) == 0)
  rid = 0;
 else
  rid = 1;
 if (sc->rl_irq[0] != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, rid, sc->rl_irq[0]);
  sc->rl_irq[0] = ((void*)0);
 }
 if ((sc->rl_flags & (RL_FLAG_MSI | RL_FLAG_MSIX)) != 0)
  pci_release_msi(dev);
 if (sc->rl_res_pba) {
  rid = PCIR_BAR(4);
  bus_release_resource(dev, SYS_RES_MEMORY, rid, sc->rl_res_pba);
 }
 if (sc->rl_res)
  bus_release_resource(dev, sc->rl_res_type, sc->rl_res_id,
      sc->rl_res);



 if (sc->rl_ldata.rl_rx_list_tag) {
  if (sc->rl_ldata.rl_rx_list_addr)
   bus_dmamap_unload(sc->rl_ldata.rl_rx_list_tag,
       sc->rl_ldata.rl_rx_list_map);
  if (sc->rl_ldata.rl_rx_list)
   bus_dmamem_free(sc->rl_ldata.rl_rx_list_tag,
       sc->rl_ldata.rl_rx_list,
       sc->rl_ldata.rl_rx_list_map);
  bus_dma_tag_destroy(sc->rl_ldata.rl_rx_list_tag);
 }



 if (sc->rl_ldata.rl_tx_list_tag) {
  if (sc->rl_ldata.rl_tx_list_addr)
   bus_dmamap_unload(sc->rl_ldata.rl_tx_list_tag,
       sc->rl_ldata.rl_tx_list_map);
  if (sc->rl_ldata.rl_tx_list)
   bus_dmamem_free(sc->rl_ldata.rl_tx_list_tag,
       sc->rl_ldata.rl_tx_list,
       sc->rl_ldata.rl_tx_list_map);
  bus_dma_tag_destroy(sc->rl_ldata.rl_tx_list_tag);
 }



 if (sc->rl_ldata.rl_tx_mtag) {
  for (i = 0; i < sc->rl_ldata.rl_tx_desc_cnt; i++) {
   if (sc->rl_ldata.rl_tx_desc[i].tx_dmamap)
    bus_dmamap_destroy(sc->rl_ldata.rl_tx_mtag,
        sc->rl_ldata.rl_tx_desc[i].tx_dmamap);
  }
  bus_dma_tag_destroy(sc->rl_ldata.rl_tx_mtag);
 }
 if (sc->rl_ldata.rl_rx_mtag) {
  for (i = 0; i < sc->rl_ldata.rl_rx_desc_cnt; i++) {
   if (sc->rl_ldata.rl_rx_desc[i].rx_dmamap)
    bus_dmamap_destroy(sc->rl_ldata.rl_rx_mtag,
        sc->rl_ldata.rl_rx_desc[i].rx_dmamap);
  }
  if (sc->rl_ldata.rl_rx_sparemap)
   bus_dmamap_destroy(sc->rl_ldata.rl_rx_mtag,
       sc->rl_ldata.rl_rx_sparemap);
  bus_dma_tag_destroy(sc->rl_ldata.rl_rx_mtag);
 }
 if (sc->rl_ldata.rl_jrx_mtag) {
  for (i = 0; i < sc->rl_ldata.rl_rx_desc_cnt; i++) {
   if (sc->rl_ldata.rl_jrx_desc[i].rx_dmamap)
    bus_dmamap_destroy(sc->rl_ldata.rl_jrx_mtag,
        sc->rl_ldata.rl_jrx_desc[i].rx_dmamap);
  }
  if (sc->rl_ldata.rl_jrx_sparemap)
   bus_dmamap_destroy(sc->rl_ldata.rl_jrx_mtag,
       sc->rl_ldata.rl_jrx_sparemap);
  bus_dma_tag_destroy(sc->rl_ldata.rl_jrx_mtag);
 }


 if (sc->rl_ldata.rl_stag) {
  if (sc->rl_ldata.rl_stats_addr)
   bus_dmamap_unload(sc->rl_ldata.rl_stag,
       sc->rl_ldata.rl_smap);
  if (sc->rl_ldata.rl_stats)
   bus_dmamem_free(sc->rl_ldata.rl_stag,
       sc->rl_ldata.rl_stats, sc->rl_ldata.rl_smap);
  bus_dma_tag_destroy(sc->rl_ldata.rl_stag);
 }

 if (sc->rl_parent_tag)
  bus_dma_tag_destroy(sc->rl_parent_tag);

 mtx_destroy(&sc->rl_mtx);

 return (0);
}
