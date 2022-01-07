
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int allocated_interrupts; int device; struct ntb_int_info* int_info; } ;
struct ntb_int_info {int * res; int * tag; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int intel_ntb_free_msix_vec (struct ntb_softc*) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
intel_ntb_teardown_interrupts(struct ntb_softc *ntb)
{
 struct ntb_int_info *current_int;
 int i;

 for (i = 0; i < ntb->allocated_interrupts; i++) {
  current_int = &ntb->int_info[i];
  if (current_int->tag != ((void*)0))
   bus_teardown_intr(ntb->device, current_int->res,
       current_int->tag);

  if (current_int->res != ((void*)0))
   bus_release_resource(ntb->device, SYS_RES_IRQ,
       rman_get_rid(current_int->res), current_int->res);
 }

 intel_ntb_free_msix_vec(ntb);
 pci_release_msi(ntb->device);
}
