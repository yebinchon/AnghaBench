
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_hwfn {TYPE_1__* vf_iov_info; } ;
struct ecore_bulletin_content {int valid_bitmap; int pvid; } ;
struct TYPE_2__ {struct ecore_bulletin_content bulletin_shadow; } ;


 int VLAN_ADDR_FORCED ;

bool ecore_vf_bulletin_get_forced_vlan(struct ecore_hwfn *hwfn, u16 *dst_pvid)
{
 struct ecore_bulletin_content *bulletin;

 bulletin = &hwfn->vf_iov_info->bulletin_shadow;

 if (!(bulletin->valid_bitmap & (1 << VLAN_ADDR_FORCED)))
  return 0;

 if (dst_pvid)
  *dst_pvid = bulletin->pvid;

 return 1;
}
