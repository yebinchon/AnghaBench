
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pstate; } ;
struct ecore_mcast_obj {TYPE_1__ raw; int sched_state; } ;


 int ECORE_SET_BIT (int ,int ) ;
 int ECORE_SMP_MB_AFTER_CLEAR_BIT () ;
 int ECORE_SMP_MB_BEFORE_CLEAR_BIT () ;

__attribute__((used)) static void ecore_mcast_set_sched(struct ecore_mcast_obj *o)
{
 ECORE_SMP_MB_BEFORE_CLEAR_BIT();
 ECORE_SET_BIT(o->sched_state, o->raw.pstate);
 ECORE_SMP_MB_AFTER_CLEAR_BIT();
}
