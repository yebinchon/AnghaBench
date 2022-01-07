
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct adapter {int mta; int has_amt; scalar_t__ has_manage; struct e1000_hw hw; } ;
typedef int if_ctx_t ;


 int INIT_DEBUGOUT (char*) ;
 int M_DEVBUF ;
 int em_add_hw_stats (struct adapter*) ;
 int em_free_pci_resources (int ) ;
 int em_get_hw_control (struct adapter*) ;
 int em_if_queues_free (int ) ;
 int em_if_update_admin_status (int ) ;
 int em_release_hw_control (struct adapter*) ;
 int em_reset (int ) ;
 int em_setup_interface (int ) ;
 int em_update_stats_counters (struct adapter*) ;
 int free (int ,int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_if_attach_post(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct e1000_hw *hw = &adapter->hw;
 int error = 0;


 error = em_setup_interface(ctx);
 if (error != 0) {
  goto err_late;
 }

 em_reset(ctx);


 em_update_stats_counters(adapter);
 hw->mac.get_link_status = 1;
 em_if_update_admin_status(ctx);
 em_add_hw_stats(adapter);


 if (adapter->has_manage && !adapter->has_amt)
  em_get_hw_control(adapter);

 INIT_DEBUGOUT("em_if_attach_post: end");

 return (error);

err_late:
 em_release_hw_control(adapter);
 em_free_pci_resources(ctx);
 em_if_queues_free(ctx);
 free(adapter->mta, M_DEVBUF);

 return (error);
}
