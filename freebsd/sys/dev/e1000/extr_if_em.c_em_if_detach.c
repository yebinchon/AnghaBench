
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int hw; } ;
typedef int if_ctx_t ;


 int INIT_DEBUGOUT (char*) ;
 int e1000_phy_hw_reset (int *) ;
 int em_free_pci_resources (int ) ;
 int em_release_hw_control (struct adapter*) ;
 int em_release_manageability (struct adapter*) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_if_detach(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 INIT_DEBUGOUT("em_if_detach: begin");

 e1000_phy_hw_reset(&adapter->hw);

 em_release_manageability(adapter);
 em_release_hw_control(adapter);
 em_free_pci_resources(ctx);

 return (0);
}
