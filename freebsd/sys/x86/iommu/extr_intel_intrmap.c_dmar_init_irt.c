
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct dmar_unit {int hw_ecap; int ir_enabled; int irte_cnt; int irtids; int * irt; int irt_phys; int dev; int qi_enabled; } ;
typedef int dmar_irte_t ;


 int DMAR_ECAP_IR ;
 scalar_t__ DMAR_IS_COHERENT (struct dmar_unit*) ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int ENOMEM ;
 int M_FIRSTFIT ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int VM_MEMATTR_DEFAULT ;
 int VM_MEMATTR_UNCACHEABLE ;
 scalar_t__ bootverbose ;
 int clp2 (int ) ;
 int device_printf (int ,char*) ;
 int dmar_enable_ir (struct dmar_unit*) ;
 int dmar_high ;
 int dmar_load_irt_ptr (struct dmar_unit*) ;
 int dmar_qi_invalidate_iec_glob (struct dmar_unit*) ;
 int intr_reprogram () ;
 scalar_t__ kmem_alloc_contig (int,int,int ,int ,int ,int ,int ) ;
 int num_io_irqs ;
 int pmap_kextract (int ) ;
 int vmem_create (char*,int ,int,int,int ,int) ;

int
dmar_init_irt(struct dmar_unit *unit)
{

 if ((unit->hw_ecap & DMAR_ECAP_IR) == 0)
  return (0);
 unit->ir_enabled = 1;
 TUNABLE_INT_FETCH("hw.dmar.ir", &unit->ir_enabled);
 if (!unit->ir_enabled)
  return (0);
 if (!unit->qi_enabled) {
  unit->ir_enabled = 0;
  if (bootverbose)
   device_printf(unit->dev,
      "QI disabled, disabling interrupt remapping\n");
  return (0);
 }
 unit->irte_cnt = clp2(num_io_irqs);
 unit->irt = (dmar_irte_t *)(uintptr_t)kmem_alloc_contig(
     unit->irte_cnt * sizeof(dmar_irte_t), M_ZERO | M_WAITOK, 0,
     dmar_high, PAGE_SIZE, 0, DMAR_IS_COHERENT(unit) ?
     VM_MEMATTR_DEFAULT : VM_MEMATTR_UNCACHEABLE);
 if (unit->irt == ((void*)0))
  return (ENOMEM);
 unit->irt_phys = pmap_kextract((vm_offset_t)unit->irt);
 unit->irtids = vmem_create("dmarirt", 0, unit->irte_cnt, 1, 0,
     M_FIRSTFIT | M_NOWAIT);
 DMAR_LOCK(unit);
 dmar_load_irt_ptr(unit);
 dmar_qi_invalidate_iec_glob(unit);
 DMAR_UNLOCK(unit);






 intr_reprogram();

 DMAR_LOCK(unit);
 dmar_enable_ir(unit);
 DMAR_UNLOCK(unit);
 return (0);
}
