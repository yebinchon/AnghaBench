
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct dmar_unit {int hw_gcmd; int ctx_obj; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_GCMD_REG ;
 int DMAR_GCMD_SRTP ;
 int DMAR_GSTS_REG ;
 int DMAR_GSTS_RTPS ;
 int DMAR_RTADDR_REG ;
 int DMAR_WAIT_UNTIL (int) ;
 int VM_OBJECT_RLOCK (int ) ;
 int VM_OBJECT_RUNLOCK (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int) ;
 int dmar_write8 (struct dmar_unit*,int ,int ) ;
 int vm_page_lookup (int ,int ) ;

int
dmar_load_root_entry_ptr(struct dmar_unit *unit)
{
 vm_page_t root_entry;
 int error;





 DMAR_ASSERT_LOCKED(unit);

 VM_OBJECT_RLOCK(unit->ctx_obj);
 root_entry = vm_page_lookup(unit->ctx_obj, 0);
 VM_OBJECT_RUNLOCK(unit->ctx_obj);
 dmar_write8(unit, DMAR_RTADDR_REG, VM_PAGE_TO_PHYS(root_entry));
 dmar_write4(unit, DMAR_GCMD_REG, unit->hw_gcmd | DMAR_GCMD_SRTP);
 DMAR_WAIT_UNTIL(((dmar_read4(unit, DMAR_GSTS_REG) & DMAR_GSTS_RTPS)
     != 0));
 return (error);
}
