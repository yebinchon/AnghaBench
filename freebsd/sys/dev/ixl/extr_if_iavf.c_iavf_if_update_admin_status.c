
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {struct i40e_hw hw; } ;
typedef int if_ctx_t ;


 int iavf_enable_adminq_irq (struct i40e_hw*) ;
 int iavf_process_adminq (struct iavf_sc*,scalar_t__*) ;
 int iavf_update_link_status (struct iavf_sc*) ;
 int iflib_admin_intr_deferred (int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static void
iavf_if_update_admin_status(if_ctx_t ctx)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct i40e_hw *hw = &sc->hw;
 u16 pending;

 iavf_process_adminq(sc, &pending);
 iavf_update_link_status(sc);





 if (pending > 0)
  iflib_admin_intr_deferred(ctx);
 else
  iavf_enable_adminq_irq(hw);
}
