
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_26__ {int rq_frag_size; int bmbx_lock; int dev_lock; int bsmbx; int ifp; void* vlan_detach; void* vlan_attach; int timer; struct TYPE_26__* next; int promisc; int flow_control; int rx_ring_size; int tx_ring_size; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int CALLOUT_MPSAFE ;
 int EVENTHANDLER_DEREGISTER (int ,void*) ;
 int EVENTHANDLER_PRI_FIRST ;
 void* EVENTHANDLER_REGISTER (int ,int ,TYPE_1__*,int ) ;
 int LOCK_CREATE (int *,char*) ;
 int LOCK_DESTROY (int *) ;
 int OCE_DEFAULT_FLOW_CONTROL ;
 int OCE_DEFAULT_PROMISCUOUS ;
 int OCE_RX_RING_SIZE ;
 int OCE_TX_RING_SIZE ;
 int callout_drain (int *) ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int,int ,TYPE_1__*) ;
 TYPE_1__* device_get_softc (int ) ;
 int ether_ifdetach (int ) ;
 int hz ;
 int if_free (int ) ;
 int oce_add_sysctls (TYPE_1__*) ;
 int oce_add_vlan ;
 int oce_attach_ifp (TYPE_1__*) ;
 int oce_del_vlan ;
 int oce_dma_free (TYPE_1__*,int *) ;
 int oce_free_lro (TYPE_1__*) ;
 int oce_get_config (TYPE_1__*) ;
 int oce_hw_init (TYPE_1__*) ;
 int oce_hw_intr_disable (TYPE_1__*) ;
 int oce_hw_pci_alloc (TYPE_1__*) ;
 int oce_hw_pci_free (TYPE_1__*) ;
 int oce_hw_start (TYPE_1__*) ;
 int oce_init_lro (TYPE_1__*) ;
 int oce_intr_free (TYPE_1__*) ;
 int oce_local_timer ;
 int oce_queue_init_all (TYPE_1__*) ;
 int oce_queue_release_all (TYPE_1__*) ;
 int oce_read_env_variables (TYPE_1__*) ;
 int oce_rq_buf_size ;
 int oce_setup_intr (TYPE_1__*) ;
 int oce_stats_free (TYPE_1__*) ;
 int oce_stats_init (TYPE_1__*) ;
 int setup_max_queues_want (TYPE_1__*) ;
 TYPE_1__* softc_head ;
 TYPE_1__* softc_tail ;
 int vlan_config ;
 int vlan_unconfig ;

__attribute__((used)) static int
oce_attach(device_t dev)
{
 POCE_SOFTC sc;
 int rc = 0;

 sc = device_get_softc(dev);

 rc = oce_hw_pci_alloc(sc);
 if (rc)
  return rc;

 sc->tx_ring_size = OCE_TX_RING_SIZE;
 sc->rx_ring_size = OCE_RX_RING_SIZE;

 sc->rq_frag_size = ((oce_rq_buf_size / 2048) * 2048);
 sc->flow_control = OCE_DEFAULT_FLOW_CONTROL;
 sc->promisc = OCE_DEFAULT_PROMISCUOUS;

 LOCK_CREATE(&sc->bmbx_lock, "Mailbox_lock");
 LOCK_CREATE(&sc->dev_lock, "Device_lock");


 rc = oce_hw_init(sc);
 if (rc)
  goto pci_res_free;

 oce_read_env_variables(sc);

 oce_get_config(sc);

 setup_max_queues_want(sc);

 rc = oce_setup_intr(sc);
 if (rc)
  goto mbox_free;

 rc = oce_queue_init_all(sc);
 if (rc)
  goto intr_free;

 rc = oce_attach_ifp(sc);
 if (rc)
  goto queues_free;







 rc = oce_hw_start(sc);
 if (rc)
  goto lro_free;

 sc->vlan_attach = EVENTHANDLER_REGISTER(vlan_config,
    oce_add_vlan, sc, EVENTHANDLER_PRI_FIRST);
 sc->vlan_detach = EVENTHANDLER_REGISTER(vlan_unconfig,
    oce_del_vlan, sc, EVENTHANDLER_PRI_FIRST);

 rc = oce_stats_init(sc);
 if (rc)
  goto vlan_free;

 oce_add_sysctls(sc);

 callout_init(&sc->timer, CALLOUT_MPSAFE);
 rc = callout_reset(&sc->timer, 2 * hz, oce_local_timer, sc);
 if (rc)
  goto stats_free;

 sc->next =((void*)0);
 if (softc_tail != ((void*)0)) {
   softc_tail->next = sc;
 } else {
   softc_head = sc;
 }
 softc_tail = sc;

 return 0;

stats_free:
 callout_drain(&sc->timer);
 oce_stats_free(sc);
vlan_free:
 if (sc->vlan_attach)
  EVENTHANDLER_DEREGISTER(vlan_config, sc->vlan_attach);
 if (sc->vlan_detach)
  EVENTHANDLER_DEREGISTER(vlan_unconfig, sc->vlan_detach);
 oce_hw_intr_disable(sc);
lro_free:




 ether_ifdetach(sc->ifp);
 if_free(sc->ifp);
queues_free:
 oce_queue_release_all(sc);
intr_free:
 oce_intr_free(sc);
mbox_free:
 oce_dma_free(sc, &sc->bsmbx);
pci_res_free:
 oce_hw_pci_free(sc);
 LOCK_DESTROY(&sc->dev_lock);
 LOCK_DESTROY(&sc->bmbx_lock);
 return rc;

}
