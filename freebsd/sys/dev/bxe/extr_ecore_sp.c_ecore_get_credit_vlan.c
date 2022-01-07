
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {struct ecore_credit_pool_obj* vlans_pool; } ;
struct ecore_credit_pool_obj {int (* get ) (struct ecore_credit_pool_obj*,int) ;} ;


 int ECORE_DBG_BREAK_IF (int) ;
 int stub1 (struct ecore_credit_pool_obj*,int) ;

__attribute__((used)) static bool ecore_get_credit_vlan(struct ecore_vlan_mac_obj *o)
{
 struct ecore_credit_pool_obj *vp = o->vlans_pool;

 ECORE_DBG_BREAK_IF(!vp);

 return vp->get(vp, 1);
}
