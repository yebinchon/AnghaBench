
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct dmar_unit {int irte_cnt; int * irt; int irtids; scalar_t__ ir_enabled; } ;
typedef int dmar_irte_t ;


 int dmar_disable_ir (struct dmar_unit*) ;
 int dmar_qi_invalidate_iec_glob (struct dmar_unit*) ;
 int kmem_free (int ,int) ;
 int vmem_destroy (int ) ;

void
dmar_fini_irt(struct dmar_unit *unit)
{

 unit->ir_enabled = 0;
 if (unit->irt != ((void*)0)) {
  dmar_disable_ir(unit);
  dmar_qi_invalidate_iec_glob(unit);
  vmem_destroy(unit->irtids);
  kmem_free((vm_offset_t)unit->irt, unit->irte_cnt *
      sizeof(dmar_irte_t));
 }
}
