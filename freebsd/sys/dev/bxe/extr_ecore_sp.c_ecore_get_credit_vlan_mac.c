
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {struct ecore_credit_pool_obj* vlans_pool; struct ecore_credit_pool_obj* macs_pool; } ;
struct ecore_credit_pool_obj {int (* put ) (struct ecore_credit_pool_obj*,int) ;int (* get ) (struct ecore_credit_pool_obj*,int) ;} ;


 int FALSE ;
 int TRUE ;
 int stub1 (struct ecore_credit_pool_obj*,int) ;
 int stub2 (struct ecore_credit_pool_obj*,int) ;
 int stub3 (struct ecore_credit_pool_obj*,int) ;

__attribute__((used)) static bool ecore_get_credit_vlan_mac(struct ecore_vlan_mac_obj *o)
{
 struct ecore_credit_pool_obj *mp = o->macs_pool;
 struct ecore_credit_pool_obj *vp = o->vlans_pool;

 if (!mp->get(mp, 1))
  return FALSE;

 if (!vp->get(vp, 1)) {
  mp->put(mp, 1);
  return FALSE;
 }

 return TRUE;
}
