
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct port_info {struct port_info* vi; int pi_lock; scalar_t__ dev; int viid; } ;
struct memwin {int mw_lock; } ;
struct TYPE_6__ {int atid_lock; int ftid_cv; int ftid_lock; struct port_info* tid_tab; struct port_info* hpftid_tab; struct port_info* ftid_tab; } ;
struct TYPE_5__ {struct port_info* tls_rx_ports; } ;
struct TYPE_4__ {struct port_info* eqmap; struct port_info* iqmap; struct port_info* ctrlq; struct port_info* txq; struct port_info* rxq; struct port_info* nm_txq; struct port_info* nm_rxq; struct port_info* ofld_rxq; struct port_info* ofld_txq; } ;
struct adapter {int flags; int intr_count; scalar_t__ intr_type; int sc_lock; int reg_lock; int sfl_lock; struct memwin* memwin; int * policy; int policy_lock; int ifp_lock; TYPE_3__ tids; int sfl_callout; TYPE_2__ tt; TYPE_1__ sge; struct port_info* irq; scalar_t__ key_map; scalar_t__ smt; scalar_t__ l2t; scalar_t__ msix_res; int msix_rid; scalar_t__ udbs_res; int udbs_rid; scalar_t__ regs_res; int regs_rid; int mbox; int pf; struct port_info** port; int * cdev; } ;
typedef int device_t ;


 int CHK_MBOX_ACCESS ;
 int FULL_INIT_DONE ;
 int FW_OK ;
 scalar_t__ INTR_MSI ;
 scalar_t__ INTR_MSIX ;
 int IS_VF ;
 int MAX_NPORTS ;
 int M_CXGBE ;
 int NUM_MEMWIN ;
 int SLIST_REMOVE (int *,struct adapter*,int ,int ) ;
 int SYS_RES_MEMORY ;
 int adapter ;
 int adapter_full_uninit (struct adapter*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bzero (struct adapter*,int) ;
 int callout_drain (int *) ;
 int cv_destroy (int *) ;
 int destroy_dev (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 int device_delete_children (int ) ;
 struct adapter* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int device_printf (int ,char*,int) ;
 int free (struct port_info*,int ) ;
 int free_hftid_hash (TYPE_3__*) ;
 int free_offload_policy (int *) ;
 int link ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int pci_release_msi (int ) ;
 int rw_destroy (int *) ;
 scalar_t__ rw_initialized (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int t4_destroy_clip_table (struct adapter*) ;
 int t4_destroy_dma_tag (struct adapter*) ;
 int t4_free_atid_table (struct adapter*) ;
 int t4_free_etid_table (struct adapter*) ;
 int t4_free_irq (struct adapter*,struct port_info*) ;
 int t4_free_l2t (scalar_t__) ;
 int t4_free_smt (scalar_t__) ;
 int t4_free_tx_sched (struct adapter*) ;
 int t4_free_vi (struct adapter*,int ,int ,int ,int ) ;
 int t4_fw_bye (struct adapter*,int ) ;
 int t4_intr_disable (struct adapter*) ;
 int t4_list ;
 int t4_list_lock ;
 int vmem_destroy (scalar_t__) ;

int
t4_detach_common(device_t dev)
{
 struct adapter *sc;
 struct port_info *pi;
 int i, rc;

 sc = device_get_softc(dev);

 if (sc->cdev) {
  destroy_dev(sc->cdev);
  sc->cdev = ((void*)0);
 }

 sx_xlock(&t4_list_lock);
 SLIST_REMOVE(&t4_list, sc, adapter, link);
 sx_xunlock(&t4_list_lock);

 sc->flags &= ~CHK_MBOX_ACCESS;
 if (sc->flags & FULL_INIT_DONE) {
  if (!(sc->flags & IS_VF))
   t4_intr_disable(sc);
 }

 if (device_is_attached(dev)) {
  rc = bus_generic_detach(dev);
  if (rc) {
   device_printf(dev,
       "failed to detach child devices: %d\n", rc);
   return (rc);
  }
 }

 for (i = 0; i < sc->intr_count; i++)
  t4_free_irq(sc, &sc->irq[i]);

 if ((sc->flags & (IS_VF | FW_OK)) == FW_OK)
  t4_free_tx_sched(sc);

 for (i = 0; i < MAX_NPORTS; i++) {
  pi = sc->port[i];
  if (pi) {
   t4_free_vi(sc, sc->mbox, sc->pf, 0, pi->vi[0].viid);
   if (pi->dev)
    device_delete_child(dev, pi->dev);

   mtx_destroy(&pi->pi_lock);
   free(pi->vi, M_CXGBE);
   free(pi, M_CXGBE);
  }
 }

 device_delete_children(dev);

 if (sc->flags & FULL_INIT_DONE)
  adapter_full_uninit(sc);

 if ((sc->flags & (IS_VF | FW_OK)) == FW_OK)
  t4_fw_bye(sc, sc->mbox);

 if (sc->intr_type == INTR_MSI || sc->intr_type == INTR_MSIX)
  pci_release_msi(dev);

 if (sc->regs_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->regs_rid,
      sc->regs_res);

 if (sc->udbs_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->udbs_rid,
      sc->udbs_res);

 if (sc->msix_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->msix_rid,
      sc->msix_res);

 if (sc->l2t)
  t4_free_l2t(sc->l2t);
 if (sc->smt)
  t4_free_smt(sc->smt);
 t4_free_atid_table(sc);



 if (sc->key_map)
  vmem_destroy(sc->key_map);
 free(sc->irq, M_CXGBE);
 free(sc->sge.rxq, M_CXGBE);
 free(sc->sge.txq, M_CXGBE);
 free(sc->sge.ctrlq, M_CXGBE);
 free(sc->sge.iqmap, M_CXGBE);
 free(sc->sge.eqmap, M_CXGBE);
 free(sc->tids.ftid_tab, M_CXGBE);
 free(sc->tids.hpftid_tab, M_CXGBE);
 free_hftid_hash(&sc->tids);
 free(sc->tids.tid_tab, M_CXGBE);
 free(sc->tt.tls_rx_ports, M_CXGBE);
 t4_destroy_dma_tag(sc);

 callout_drain(&sc->sfl_callout);
 if (mtx_initialized(&sc->tids.ftid_lock)) {
  mtx_destroy(&sc->tids.ftid_lock);
  cv_destroy(&sc->tids.ftid_cv);
 }
 if (mtx_initialized(&sc->tids.atid_lock))
  mtx_destroy(&sc->tids.atid_lock);
 if (mtx_initialized(&sc->ifp_lock))
  mtx_destroy(&sc->ifp_lock);

 if (rw_initialized(&sc->policy_lock)) {
  rw_destroy(&sc->policy_lock);




 }

 for (i = 0; i < NUM_MEMWIN; i++) {
  struct memwin *mw = &sc->memwin[i];

  if (rw_initialized(&mw->mw_lock))
   rw_destroy(&mw->mw_lock);
 }

 mtx_destroy(&sc->sfl_lock);
 mtx_destroy(&sc->reg_lock);
 mtx_destroy(&sc->sc_lock);

 bzero(sc, sizeof(*sc));

 return (0);
}
