
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int numirqs; int * r_mem; scalar_t__ r_rid; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int ahci_attach (int ) ;
 int ahci_gen_ctlr_reset (int ) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct ahci_controller* device_get_softc (int ) ;

__attribute__((used)) static int
ahci_gen_attach(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 int error;

 ctlr->r_rid = 0;
 ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &ctlr->r_rid,
     RF_ACTIVE);
 if (ctlr->r_mem == ((void*)0))
  return (ENXIO);


 ctlr->numirqs = 1;


 if ((error = ahci_gen_ctlr_reset(dev)) == 0)
  error = ahci_attach(dev);

 if (error != 0) {
  if (ctlr->r_mem != ((void*)0))
   bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid,
       ctlr->r_mem);
 }
 return error;
}
