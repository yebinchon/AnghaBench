
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct dmar_unit {int ir_enabled; } ;
typedef int device_t ;


 int DMAR_IRTE1_DLM_FM ;
 int DMAR_IRTE1_DM_PHYSICAL ;
 int DMAR_IRTE1_DST_x2APIC (int) ;
 int DMAR_IRTE1_DST_xAPIC (int) ;
 int DMAR_IRTE1_P ;
 int DMAR_IRTE1_RH_DIRECT ;
 int DMAR_IRTE1_TM_EDGE ;
 int DMAR_IRTE1_V (int) ;
 scalar_t__ DMAR_X2APIC (struct dmar_unit*) ;
 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int MSI_INTEL_ADDR_BASE ;
 struct dmar_unit* dmar_ir_find (int ,int *,int*) ;
 int dmar_ir_program_irte (struct dmar_unit*,int,int,int ) ;
 scalar_t__ x2apic_mode ;

int
iommu_map_msi_intr(device_t src, u_int cpu, u_int vector, u_int cookie,
    uint64_t *addr, uint32_t *data)
{
 struct dmar_unit *unit;
 uint64_t low;
 uint16_t rid;
 int is_dmar;

 unit = dmar_ir_find(src, &rid, &is_dmar);
 if (is_dmar) {
  KASSERT(unit == ((void*)0), ("DMAR cannot translate itself"));





  *data = vector;
  *addr = MSI_INTEL_ADDR_BASE | ((cpu & 0xff) << 12);
  if (x2apic_mode)
   *addr |= ((uint64_t)cpu & 0xffffff00) << 32;
  else
   KASSERT(cpu <= 0xff, ("cpu id too big %d", cpu));
  return (0);
 }
 if (unit == ((void*)0) || !unit->ir_enabled || cookie == -1)
  return (EOPNOTSUPP);

 low = (DMAR_X2APIC(unit) ? DMAR_IRTE1_DST_x2APIC(cpu) :
     DMAR_IRTE1_DST_xAPIC(cpu)) | DMAR_IRTE1_V(vector) |
     DMAR_IRTE1_DLM_FM | DMAR_IRTE1_TM_EDGE | DMAR_IRTE1_RH_DIRECT |
     DMAR_IRTE1_DM_PHYSICAL | DMAR_IRTE1_P;
 dmar_ir_program_irte(unit, cookie, low, rid);

 if (addr != ((void*)0)) {




  *addr = MSI_INTEL_ADDR_BASE | ((cookie & 0x7fff) << 5) |
      ((cookie & 0x8000) << 2) | 0x18;
  *data = 0;
 }
 return (0);
}
