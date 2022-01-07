
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int INIT_DEBUGOUT (char*) ;
 int ixv_free_pci_resources (int ) ;

__attribute__((used)) static int
ixv_if_detach(if_ctx_t ctx)
{
 INIT_DEBUGOUT("ixv_detach: begin");

 ixv_free_pci_resources(ctx);

 return (0);
}
