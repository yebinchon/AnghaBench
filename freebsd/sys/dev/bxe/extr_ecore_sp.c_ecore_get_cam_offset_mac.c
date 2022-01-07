
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {struct ecore_credit_pool_obj* macs_pool; } ;
struct ecore_credit_pool_obj {int (* get_entry ) (struct ecore_credit_pool_obj*,int*) ;} ;


 int ECORE_DBG_BREAK_IF (int) ;
 int stub1 (struct ecore_credit_pool_obj*,int*) ;

__attribute__((used)) static bool ecore_get_cam_offset_mac(struct ecore_vlan_mac_obj *o, int *offset)
{
 struct ecore_credit_pool_obj *mp = o->macs_pool;

 ECORE_DBG_BREAK_IF(!mp);

 return mp->get_entry(mp, offset);
}
