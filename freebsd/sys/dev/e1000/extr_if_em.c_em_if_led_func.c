
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int hw; } ;
typedef int if_ctx_t ;


 int e1000_cleanup_led (int *) ;
 int e1000_led_off (int *) ;
 int e1000_led_on (int *) ;
 int e1000_setup_led (int *) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
em_if_led_func(if_ctx_t ctx, int onoff)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 if (onoff) {
  e1000_setup_led(&adapter->hw);
  e1000_led_on(&adapter->hw);
 } else {
  e1000_led_off(&adapter->hw);
  e1000_cleanup_led(&adapter->hw);
 }
}
