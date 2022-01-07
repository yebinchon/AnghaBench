
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixl_vsi {int eth_stats; TYPE_1__* shared; int num_tx_queues; int num_rx_queues; int ifp; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int queues_enabled; int init_state; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct i40e_eth_stats {int dummy; } ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_2__ {int isc_ntxqsets; int isc_nrxqsets; } ;


 int IAVF_INIT_READY ;
 int INIT_DBG_DEV (int ,char*) ;
 int atomic_store_rel_32 (int *,int ) ;
 int bzero (int *,int) ;
 int iavf_add_device_sysctls (struct iavf_sc*) ;
 int iavf_enable_adminq_irq (struct i40e_hw*) ;
 int iavf_setup_interface (int ,struct iavf_sc*) ;
 int iflib_get_dev (int ) ;
 int iflib_get_ifp (int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static int
iavf_if_attach_post(if_ctx_t ctx)
{
 device_t dev;
 struct iavf_sc *sc;
 struct i40e_hw *hw;
 struct ixl_vsi *vsi;
 int error = 0;

 INIT_DBG_DEV(dev, "begin");

 dev = iflib_get_dev(ctx);
 sc = iflib_get_softc(ctx);
 vsi = &sc->vsi;
 vsi->ifp = iflib_get_ifp(ctx);
 hw = &sc->hw;


 vsi->num_rx_queues = vsi->shared->isc_nrxqsets;
 vsi->num_tx_queues = vsi->shared->isc_ntxqsets;


 iavf_setup_interface(dev, sc);

 INIT_DBG_DEV(dev, "Interface setup complete");


 bzero(&sc->vsi.eth_stats, sizeof(struct i40e_eth_stats));
 iavf_add_device_sysctls(sc);

 sc->init_state = IAVF_INIT_READY;
 atomic_store_rel_32(&sc->queues_enabled, 0);


 iavf_enable_adminq_irq(hw);

 INIT_DBG_DEV(dev, "end");

 return (error);
}
