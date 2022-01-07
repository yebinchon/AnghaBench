
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_raw_obj {int pstate; int state; } ;


 int ECORE_SET_BIT (int ,int ) ;
 int ECORE_SMP_MB_AFTER_CLEAR_BIT () ;
 int ECORE_SMP_MB_BEFORE_CLEAR_BIT () ;

__attribute__((used)) static void ecore_raw_set_pending(struct ecore_raw_obj *o)
{
 ECORE_SMP_MB_BEFORE_CLEAR_BIT();
 ECORE_SET_BIT(o->state, o->pstate);
 ECORE_SMP_MB_AFTER_CLEAR_BIT();
}
