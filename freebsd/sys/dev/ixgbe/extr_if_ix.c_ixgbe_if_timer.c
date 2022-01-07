
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct adapter {int link_up; int link_speed; int hw; scalar_t__ sfp_probe; } ;
typedef int if_ctx_t ;


 int iflib_admin_intr_deferred (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_check_link (int *,int *,int *,int ) ;
 int ixgbe_sfp_probe (int ) ;

__attribute__((used)) static void
ixgbe_if_timer(if_ctx_t ctx, uint16_t qid)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 if (qid != 0)
  return;


 if (adapter->sfp_probe)
  if (!ixgbe_sfp_probe(ctx))
   return;

 ixgbe_check_link(&adapter->hw, &adapter->link_speed,
     &adapter->link_up, 0);


 iflib_admin_intr_deferred(ctx);

}
