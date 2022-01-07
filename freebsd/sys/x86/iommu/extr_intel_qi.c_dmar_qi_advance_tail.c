
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int inv_queue_tail; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_IQT_REG ;
 int dmar_write4 (struct dmar_unit*,int ,int ) ;

__attribute__((used)) static void
dmar_qi_advance_tail(struct dmar_unit *unit)
{

 DMAR_ASSERT_LOCKED(unit);
 dmar_write4(unit, DMAR_IQT_REG, unit->inv_queue_tail);
}
