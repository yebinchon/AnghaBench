
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* check_pending ) (TYPE_1__*) ;} ;
struct ecore_mcast_obj {scalar_t__ (* check_sched ) (struct ecore_mcast_obj*) ;TYPE_1__ raw; } ;


 scalar_t__ stub1 (TYPE_1__*) ;
 scalar_t__ stub2 (struct ecore_mcast_obj*) ;

__attribute__((used)) static bool ecore_mcast_check_pending(struct ecore_mcast_obj *o)
{
 return o->raw.check_pending(&o->raw) || o->check_sched(o);
}
