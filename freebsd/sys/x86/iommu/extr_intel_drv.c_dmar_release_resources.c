
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int * ctx_obj; int * domids; int * regs; int reg_rid; } ;
typedef int device_t ;


 int DMAR_INTR_TOTAL ;
 int SYS_RES_MEMORY ;
 int bus_deactivate_resource (int ,int ,int ,int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int delete_unrhdr (int *) ;
 int dmar_fini_busdma (struct dmar_unit*) ;
 int dmar_fini_fault_log (struct dmar_unit*) ;
 int dmar_fini_irt (struct dmar_unit*) ;
 int dmar_fini_qi (struct dmar_unit*) ;
 int dmar_release_intr (int ,struct dmar_unit*,int) ;
 int vm_object_deallocate (int *) ;

__attribute__((used)) static void
dmar_release_resources(device_t dev, struct dmar_unit *unit)
{
 int i;

 dmar_fini_busdma(unit);
 dmar_fini_irt(unit);
 dmar_fini_qi(unit);
 dmar_fini_fault_log(unit);
 for (i = 0; i < DMAR_INTR_TOTAL; i++)
  dmar_release_intr(dev, unit, i);
 if (unit->regs != ((void*)0)) {
  bus_deactivate_resource(dev, SYS_RES_MEMORY, unit->reg_rid,
      unit->regs);
  bus_release_resource(dev, SYS_RES_MEMORY, unit->reg_rid,
      unit->regs);
  unit->regs = ((void*)0);
 }
 if (unit->domids != ((void*)0)) {
  delete_unrhdr(unit->domids);
  unit->domids = ((void*)0);
 }
 if (unit->ctx_obj != ((void*)0)) {
  vm_object_deallocate(unit->ctx_obj);
  unit->ctx_obj = ((void*)0);
 }
}
