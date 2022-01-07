
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int qi_task; int qi_taskqueue; int unit; int qi_enabled; } ;


 int FILTER_HANDLED ;
 int KASSERT (int ,char*) ;
 int taskqueue_enqueue (int ,int *) ;

int
dmar_qi_intr(void *arg)
{
 struct dmar_unit *unit;

 unit = arg;
 KASSERT(unit->qi_enabled, ("dmar%d: QI is not enabled", unit->unit));
 taskqueue_enqueue(unit->qi_taskqueue, &unit->qi_task);
 return (FILTER_HANDLED);
}
