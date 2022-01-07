
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pfvf_update_tunn_param_tlv {int vxlan_udp_port; int geneve_udp_port; int ipgre_clss; int ipgre_mode; int l2gre_clss; int l2gre_mode; int ipgeneve_clss; int ipgeneve_mode; int l2geneve_clss; int l2geneve_mode; int vxlan_clss; int vxlan_mode; int tunn_feature_mask; } ;
struct TYPE_6__ {int b_mode_enabled; } ;
struct TYPE_5__ {int port; } ;
struct TYPE_4__ {int port; } ;
struct ecore_tunnel_info {TYPE_3__ ip_gre; TYPE_3__ l2_gre; TYPE_3__ ip_geneve; TYPE_3__ l2_geneve; TYPE_3__ vxlan; TYPE_2__ vxlan_port; TYPE_1__ geneve_port; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ,int ,int ) ;
 int ECORE_MODE_IPGENEVE_TUNN ;
 int ECORE_MODE_IPGRE_TUNN ;
 int ECORE_MODE_L2GENEVE_TUNN ;
 int ECORE_MODE_L2GRE_TUNN ;
 int ECORE_MODE_VXLAN_TUNN ;
 int ECORE_MSG_IOV ;
 int __ecore_vf_update_tunn_param (TYPE_3__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
ecore_vf_update_tunn_param(struct ecore_hwfn *p_hwfn,
      struct ecore_tunnel_info *p_tun,
      struct pfvf_update_tunn_param_tlv *p_resp)
{

 u16 feat_mask = p_resp->tunn_feature_mask;

 __ecore_vf_update_tunn_param(&p_tun->vxlan, feat_mask,
         p_resp->vxlan_mode, p_resp->vxlan_clss,
         ECORE_MODE_VXLAN_TUNN);
 __ecore_vf_update_tunn_param(&p_tun->l2_geneve, feat_mask,
         p_resp->l2geneve_mode,
         p_resp->l2geneve_clss,
         ECORE_MODE_L2GENEVE_TUNN);
 __ecore_vf_update_tunn_param(&p_tun->ip_geneve, feat_mask,
         p_resp->ipgeneve_mode,
         p_resp->ipgeneve_clss,
         ECORE_MODE_IPGENEVE_TUNN);
 __ecore_vf_update_tunn_param(&p_tun->l2_gre, feat_mask,
         p_resp->l2gre_mode, p_resp->l2gre_clss,
         ECORE_MODE_L2GRE_TUNN);
 __ecore_vf_update_tunn_param(&p_tun->ip_gre, feat_mask,
         p_resp->ipgre_mode, p_resp->ipgre_clss,
         ECORE_MODE_IPGRE_TUNN);
 p_tun->geneve_port.port = p_resp->geneve_udp_port;
 p_tun->vxlan_port.port = p_resp->vxlan_udp_port;

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "tunn mode: vxlan=0x%x, l2geneve=0x%x, ipgeneve=0x%x, l2gre=0x%x, ipgre=0x%x",
     p_tun->vxlan.b_mode_enabled, p_tun->l2_geneve.b_mode_enabled,
     p_tun->ip_geneve.b_mode_enabled,
     p_tun->l2_gre.b_mode_enabled,
     p_tun->ip_gre.b_mode_enabled);
}
