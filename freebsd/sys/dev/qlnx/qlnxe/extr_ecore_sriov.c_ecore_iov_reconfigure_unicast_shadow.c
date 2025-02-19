
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ecore_vf_info {int configured_features; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SUCCESS ;
 int VLAN_ADDR_FORCED ;
 int ecore_iov_reconfigure_unicast_vlan (struct ecore_hwfn*,struct ecore_vf_info*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iov_reconfigure_unicast_shadow(struct ecore_hwfn *p_hwfn,
         struct ecore_vf_info *p_vf,
         u64 events)
{
 enum _ecore_status_t rc = ECORE_SUCCESS;



 if ((events & (1 << VLAN_ADDR_FORCED)) &&
     !(p_vf->configured_features & (1 << VLAN_ADDR_FORCED)))
  rc = ecore_iov_reconfigure_unicast_vlan(p_hwfn, p_vf);

 return rc;
}
