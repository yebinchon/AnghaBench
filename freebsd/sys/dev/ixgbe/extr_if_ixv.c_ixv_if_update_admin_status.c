
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ get_link_status; } ;
struct TYPE_5__ {scalar_t__ adapter_stopped; TYPE_1__ mac; } ;
struct adapter {int link_speed; scalar_t__ link_active; scalar_t__ link_up; TYPE_2__ hw; } ;
typedef scalar_t__ s32 ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_6__ {int (* if_init ) (int ) ;} ;


 scalar_t__ FALSE ;
 int IF_Gbps (int) ;
 scalar_t__ IXGBE_SUCCESS ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ TRUE ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 TYPE_3__* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int iflib_link_state_change (int ,int ,int ) ;
 scalar_t__ ixgbe_check_link (TYPE_2__*,int*,scalar_t__*,scalar_t__) ;
 int ixv_update_stats (struct adapter*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
ixv_if_update_admin_status(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 s32 status;

 adapter->hw.mac.get_link_status = TRUE;

 status = ixgbe_check_link(&adapter->hw, &adapter->link_speed,
     &adapter->link_up, FALSE);

 if (status != IXGBE_SUCCESS && adapter->hw.adapter_stopped == FALSE) {


  iflib_get_ifp(ctx)->if_init(ctx);
 }

 if (adapter->link_up) {
  if (adapter->link_active == FALSE) {
   if (bootverbose)
    device_printf(dev, "Link is up %d Gbps %s \n",
        ((adapter->link_speed == 128) ? 10 : 1),
        "Full Duplex");
   adapter->link_active = TRUE;
   iflib_link_state_change(ctx, LINK_STATE_UP,
       IF_Gbps(10));
  }
 } else {
  if (adapter->link_active == TRUE) {
   if (bootverbose)
    device_printf(dev, "Link is Down\n");
   iflib_link_state_change(ctx, LINK_STATE_DOWN, 0);
   adapter->link_active = FALSE;
  }
 }


 ixv_update_stats(adapter);
}
