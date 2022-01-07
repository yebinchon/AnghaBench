
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_raw_obj {int pstate; int state; } ;


 int ECORE_TEST_BIT (int ,int ) ;

__attribute__((used)) static bool ecore_raw_check_pending(struct ecore_raw_obj *o)
{
 return !!ECORE_TEST_BIT(o->state, o->pstate);
}
