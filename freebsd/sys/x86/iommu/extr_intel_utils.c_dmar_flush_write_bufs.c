
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int hw_cap; int hw_gcmd; int unit; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_CAP_RWBF ;
 int DMAR_GCMD_REG ;
 int DMAR_GCMD_WBF ;
 int DMAR_GSTS_REG ;
 int DMAR_GSTS_WBFS ;
 int DMAR_WAIT_UNTIL (int) ;
 int KASSERT (int,char*) ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int) ;

int
dmar_flush_write_bufs(struct dmar_unit *unit)
{
 int error;

 DMAR_ASSERT_LOCKED(unit);




 KASSERT((unit->hw_cap & DMAR_CAP_RWBF) != 0,
     ("dmar%d: no RWBF", unit->unit));

 dmar_write4(unit, DMAR_GCMD_REG, unit->hw_gcmd | DMAR_GCMD_WBF);
 DMAR_WAIT_UNTIL(((dmar_read4(unit, DMAR_GSTS_REG) & DMAR_GSTS_WBFS)
     != 0));
 return (error);
}
