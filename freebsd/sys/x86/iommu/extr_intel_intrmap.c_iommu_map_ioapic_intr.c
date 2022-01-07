
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct dmar_unit {int irtids; int ir_enabled; } ;


 int DMAR_IRTE1_DLM_ExtINT ;
 int DMAR_IRTE1_DLM_FM ;
 int DMAR_IRTE1_DLM_NMI ;
 int DMAR_IRTE1_DLM_SMI ;
 int DMAR_IRTE1_DM_PHYSICAL ;
 int DMAR_IRTE1_DST_x2APIC (int) ;
 int DMAR_IRTE1_DST_xAPIC (int) ;
 int DMAR_IRTE1_P ;
 int DMAR_IRTE1_RH_DIRECT ;
 int DMAR_IRTE1_TM_EDGE ;
 int DMAR_IRTE1_TM_LEVEL ;
 int DMAR_IRTE1_V (int) ;
 scalar_t__ DMAR_X2APIC (struct dmar_unit*) ;
 int EOPNOTSUPP ;
 unsigned long long IOART_DELFIXED ;
 unsigned long long IOART_INTAHI ;
 unsigned long long IOART_INTALO ;
 unsigned long long IOART_TRGREDG ;
 unsigned long long IOART_TRGRLVL ;



 int KASSERT (int,char*) ;
 int M_FIRSTFIT ;
 int M_NOWAIT ;
 struct dmar_unit* dmar_find_ioapic (int,int *) ;
 int dmar_ir_program_irte (struct dmar_unit*,int,int,int ) ;
 int vmem_alloc (int ,int,int,int*) ;

int
iommu_map_ioapic_intr(u_int ioapic_id, u_int cpu, u_int vector, bool edge,
    bool activehi, int irq, u_int *cookie, uint32_t *hi, uint32_t *lo)
{
 struct dmar_unit *unit;
 vmem_addr_t vmem_res;
 uint64_t low, iorte;
 u_int idx;
 int error;
 uint16_t rid;

 unit = dmar_find_ioapic(ioapic_id, &rid);
 if (unit == ((void*)0) || !unit->ir_enabled) {
  *cookie = -1;
  return (EOPNOTSUPP);
 }

 error = vmem_alloc(unit->irtids, 1, M_FIRSTFIT | M_NOWAIT, &vmem_res);
 if (error != 0) {
  KASSERT(error != EOPNOTSUPP,
      ("impossible EOPNOTSUPP from vmem"));
  return (error);
 }
 idx = vmem_res;
 low = 0;
 switch (irq) {
 case 130:
  low |= DMAR_IRTE1_DLM_ExtINT;
  break;
 case 129:
  low |= DMAR_IRTE1_DLM_NMI;
  break;
 case 128:
  low |= DMAR_IRTE1_DLM_SMI;
  break;
 default:
  KASSERT(vector != 0, ("No vector for IRQ %u", irq));
  low |= DMAR_IRTE1_DLM_FM | DMAR_IRTE1_V(vector);
  break;
 }
 low |= (DMAR_X2APIC(unit) ? DMAR_IRTE1_DST_x2APIC(cpu) :
     DMAR_IRTE1_DST_xAPIC(cpu)) |
     (edge ? DMAR_IRTE1_TM_EDGE : DMAR_IRTE1_TM_LEVEL) |
     DMAR_IRTE1_RH_DIRECT | DMAR_IRTE1_DM_PHYSICAL | DMAR_IRTE1_P;
 dmar_ir_program_irte(unit, idx, low, rid);

 if (hi != ((void*)0)) {




  iorte = (1ULL << 48) | ((uint64_t)(idx & 0x7fff) << 49) |
      ((idx & 0x8000) != 0 ? (1 << 11) : 0) |
      (edge ? IOART_TRGREDG : IOART_TRGRLVL) |
      (activehi ? IOART_INTAHI : IOART_INTALO) |
      IOART_DELFIXED | vector;
  *hi = iorte >> 32;
  *lo = iorte;
 }
 *cookie = idx;
 return (0);
}
