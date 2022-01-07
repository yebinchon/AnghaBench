
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_public_vf_info {int forced_mac; } ;
struct ecore_hwfn {scalar_t__ p_dev; } ;
struct ecore_filter_ucast {scalar_t__ type; int mac; } ;
typedef int qlnx_host_t ;


 scalar_t__ ECORE_FILTER_MAC ;
 scalar_t__ ECORE_FILTER_MAC_VLAN ;
 int ECORE_INVAL ;
 int EINVAL ;
 int ETH_ALEN ;
 int QL_DPRINT1 (int *,char*,int) ;
 struct ecore_public_vf_info* ecore_iov_get_public_vf_info (struct ecore_hwfn*,int,int) ;
 int ecore_iov_vf_has_vport_instance (struct ecore_hwfn*,int) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
__qlnx_iov_chk_ucast(struct ecore_hwfn *p_hwfn, int vfid,
 struct ecore_filter_ucast *params)
{
        struct ecore_public_vf_info *vf;

 if (!ecore_iov_vf_has_vport_instance(p_hwfn, vfid)) {
  QL_DPRINT1(((qlnx_host_t *)p_hwfn->p_dev),
   "VF[%d] vport not initialized\n", vfid);
  return ECORE_INVAL;
 }

        vf = ecore_iov_get_public_vf_info(p_hwfn, vfid, 1);
        if (!vf)
                return -EINVAL;


        if (params->type == ECORE_FILTER_MAC ||
            params->type == ECORE_FILTER_MAC_VLAN)
                memcpy(params->mac, vf->forced_mac, ETH_ALEN);

        return 0;
}
