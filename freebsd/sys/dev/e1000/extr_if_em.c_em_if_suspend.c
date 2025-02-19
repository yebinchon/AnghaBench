
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int if_ctx_t ;


 int em_enable_wakeup (int ) ;
 int em_release_hw_control (struct adapter*) ;
 int em_release_manageability (struct adapter*) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_if_suspend(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 em_release_manageability(adapter);
 em_release_hw_control(adapter);
 em_enable_wakeup(ctx);
 return (0);
}
