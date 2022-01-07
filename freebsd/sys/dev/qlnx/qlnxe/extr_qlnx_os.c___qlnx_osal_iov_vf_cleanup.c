
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ecore_public_vf_info {scalar_t__ forced_vlan; int forced_mac; } ;
struct ecore_hwfn {int dummy; } ;


 int ETH_ALEN ;
 struct ecore_public_vf_info* ecore_iov_get_public_vf_info (struct ecore_hwfn*,int ,int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void
__qlnx_osal_iov_vf_cleanup(struct ecore_hwfn *p_hwfn, uint8_t rel_vf_id)
{
        struct ecore_public_vf_info *vf_info;

        vf_info = ecore_iov_get_public_vf_info(p_hwfn, rel_vf_id, 0);

        if (!vf_info)
                return;


        memset(vf_info->forced_mac, 0, ETH_ALEN);

        vf_info->forced_vlan = 0;

 return;
}
