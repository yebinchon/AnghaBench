
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef size_t u_int ;
struct dmar_unit {size_t irte_cnt; int dev; TYPE_1__* irt; } ;
struct TYPE_2__ {int irte1; int irte2; } ;
typedef TYPE_1__ dmar_irte_t ;


 int DMAR_IRTE1_P ;
 int DMAR_IRTE2_SID_RID (int ) ;
 int DMAR_IRTE2_SQ_RID ;
 int DMAR_IRTE2_SVT_RID ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,size_t,int ,int ,int ) ;
 int dmar_pte_store (int*,int) ;
 int dmar_pte_update (int*,int) ;
 int dmar_qi_invalidate_iec (struct dmar_unit*,size_t,int) ;

__attribute__((used)) static void
dmar_ir_program_irte(struct dmar_unit *unit, u_int idx, uint64_t low,
    uint16_t rid)
{
 dmar_irte_t *irte;
 uint64_t high;

 KASSERT(idx < unit->irte_cnt,
     ("bad cookie %d %d", idx, unit->irte_cnt));
 irte = &(unit->irt[idx]);
 high = DMAR_IRTE2_SVT_RID | DMAR_IRTE2_SQ_RID |
     DMAR_IRTE2_SID_RID(rid);
 if (bootverbose) {
  device_printf(unit->dev,
      "programming irte[%d] rid %#x high %#jx low %#jx\n",
      idx, rid, (uintmax_t)high, (uintmax_t)low);
 }
 DMAR_LOCK(unit);
 if ((irte->irte1 & DMAR_IRTE1_P) != 0) {






  KASSERT(irte->irte2 == high,
      ("irte2 mismatch, %jx %jx", (uintmax_t)irte->irte2,
      (uintmax_t)high));
  dmar_pte_update(&irte->irte1, low);
 } else {
  dmar_pte_store(&irte->irte2, high);
  dmar_pte_store(&irte->irte1, low);
 }
 dmar_qi_invalidate_iec(unit, idx, 1);
 DMAR_UNLOCK(unit);

}
