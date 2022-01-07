
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; } ;
typedef int if_ctx_t ;


 int E1000_WRITE_REG (TYPE_2__*,int ,int ) ;
 int E1000_WUFC ;
 int INIT_DEBUGOUT (char*) ;
 scalar_t__ e1000_82544 ;
 int e1000_cleanup_led (TYPE_2__*) ;
 int e1000_led_off (TYPE_2__*) ;
 int e1000_reset_hw (TYPE_2__*) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
em_if_stop(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 INIT_DEBUGOUT("em_if_stop: begin");

 e1000_reset_hw(&adapter->hw);
 if (adapter->hw.mac.type >= e1000_82544)
  E1000_WRITE_REG(&adapter->hw, E1000_WUFC, 0);

 e1000_led_off(&adapter->hw);
 e1000_cleanup_led(&adapter->hw);
}
