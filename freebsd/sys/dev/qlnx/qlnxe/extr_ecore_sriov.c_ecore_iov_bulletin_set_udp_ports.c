
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct ecore_vf_info {TYPE_2__ bulletin; scalar_t__ b_malicious; } ;
struct ecore_hwfn {int p_dev; } ;
struct TYPE_3__ {void* geneve_udp_port; void* vxlan_udp_port; } ;


 int DP_NOTICE (int ,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_MSG_IOV ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,void*,int) ;

void ecore_iov_bulletin_set_udp_ports(struct ecore_hwfn *p_hwfn,
          int vfid, u16 vxlan_port, u16 geneve_port)
{
 struct ecore_vf_info *vf_info;

 vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf_info) {
  DP_NOTICE(p_hwfn->p_dev, 1,
     "Can not set udp ports, invalid vfid [%d]\n", vfid);
  return;
 }

 if (vf_info->b_malicious) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Can not set udp ports to malicious VF [%d]\n",
      vfid);
  return;
 }

 vf_info->bulletin.p_virt->vxlan_udp_port = vxlan_port;
 vf_info->bulletin.p_virt->geneve_udp_port = geneve_port;
}
