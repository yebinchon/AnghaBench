
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pstate; } ;
struct ecore_mcast_obj {TYPE_1__ raw; int sched_state; } ;


 int ECORE_TEST_BIT (int ,int ) ;

__attribute__((used)) static bool ecore_mcast_check_sched(struct ecore_mcast_obj *o)
{
 return !!ECORE_TEST_BIT(o->sched_state, o->raw.pstate);
}
