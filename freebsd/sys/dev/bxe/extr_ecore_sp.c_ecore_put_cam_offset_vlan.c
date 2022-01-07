
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {struct ecore_credit_pool_obj* vlans_pool; } ;
struct ecore_credit_pool_obj {int (* put_entry ) (struct ecore_credit_pool_obj*,int) ;} ;


 int stub1 (struct ecore_credit_pool_obj*,int) ;

__attribute__((used)) static bool ecore_put_cam_offset_vlan(struct ecore_vlan_mac_obj *o, int offset)
{
 struct ecore_credit_pool_obj *vp = o->vlans_pool;

 return vp->put_entry(vp, offset);
}
