
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {scalar_t__ mcast_list_len; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {scalar_t__ max_cmd_len; int total_pending_num; int (* set_registry_size ) (struct ecore_mcast_obj*,int) ;} ;
struct bxe_softc {int dummy; } ;


 int stub1 (struct ecore_mcast_obj*,int) ;

__attribute__((used)) static void ecore_mcast_revert_e1(struct bxe_softc *sc,
          struct ecore_mcast_ramrod_params *p,
          int old_num_macs)
{
 struct ecore_mcast_obj *o = p->mcast_obj;

 o->set_registry_size(o, old_num_macs);





 if (p->mcast_list_len)
  o->total_pending_num -= o->max_cmd_len;
}
