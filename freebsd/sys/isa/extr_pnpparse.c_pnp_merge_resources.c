
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_config {int ic_nmem; int ic_nport; int ic_nirq; int ic_ndrq; int * ic_drqmask; int * ic_irqmask; int * ic_port; int * ic_mem; } ;
typedef int device_t ;


 int ISA_NDRQ ;
 int ISA_NIRQ ;
 int ISA_NMEM ;
 int ISA_NPORT ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
pnp_merge_resources(device_t dev, struct isa_config *from,
      struct isa_config *to)
{
 device_t parent;
 int i;

 parent = device_get_parent(dev);
 for (i = 0; i < from->ic_nmem; i++) {
  if (to->ic_nmem == ISA_NMEM) {
   device_printf(parent, "too many memory ranges\n");
   return;
  }
  to->ic_mem[to->ic_nmem] = from->ic_mem[i];
  to->ic_nmem++;
 }
 for (i = 0; i < from->ic_nport; i++) {
  if (to->ic_nport == ISA_NPORT) {
   device_printf(parent, "too many port ranges\n");
   return;
  }
  to->ic_port[to->ic_nport] = from->ic_port[i];
  to->ic_nport++;
 }
 for (i = 0; i < from->ic_nirq; i++) {
  if (to->ic_nirq == ISA_NIRQ) {
   device_printf(parent, "too many irq ranges\n");
   return;
  }
  to->ic_irqmask[to->ic_nirq] = from->ic_irqmask[i];
  to->ic_nirq++;
 }
 for (i = 0; i < from->ic_ndrq; i++) {
  if (to->ic_ndrq == ISA_NDRQ) {
   device_printf(parent, "too many drq ranges\n");
   return;
  }
  to->ic_drqmask[to->ic_ndrq] = from->ic_drqmask[i];
  to->ic_ndrq++;
 }
}
