
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int watchdog_events; } ;
typedef int if_ctx_t ;


 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
em_if_watchdog_reset(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);





 adapter->watchdog_events++;
}
