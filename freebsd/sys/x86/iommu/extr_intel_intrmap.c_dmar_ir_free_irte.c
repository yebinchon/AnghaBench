
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct dmar_unit {size_t irte_cnt; int irtids; TYPE_1__* irt; scalar_t__ ir_enabled; } ;
struct TYPE_2__ {int irte2; int irte1; } ;
typedef TYPE_1__ dmar_irte_t ;


 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int dmar_pte_clear (int *) ;
 int dmar_qi_invalidate_iec (struct dmar_unit*,size_t,int) ;
 int vmem_free (int ,size_t,int) ;

__attribute__((used)) static int
dmar_ir_free_irte(struct dmar_unit *unit, u_int cookie)
{
 dmar_irte_t *irte;

 KASSERT(unit != ((void*)0) && unit->ir_enabled,
     ("unmap: cookie %d unit %p", cookie, unit));
 KASSERT(cookie < unit->irte_cnt,
     ("bad cookie %u %u", cookie, unit->irte_cnt));
 irte = &(unit->irt[cookie]);
 dmar_pte_clear(&irte->irte1);
 dmar_pte_clear(&irte->irte2);
 DMAR_LOCK(unit);
 dmar_qi_invalidate_iec(unit, cookie, 1);
 DMAR_UNLOCK(unit);
 vmem_free(unit->irtids, cookie, 1);
 return (0);
}
